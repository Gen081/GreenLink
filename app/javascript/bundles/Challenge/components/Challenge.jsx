import React, { Component } from 'react'
import axios from 'axios'
import styles from './challenge.module.css'
import CustomStyleModal from './modal.module.css'
import Modal from 'react-modal';

export default class Challenge extends Component {
    state = {
        challenges: [],
        challengeSelect: [],
        modalIsOpen: false,
        icons: [
            [<i className="fas fa-globe-americas"></i>],
            [<i className="fas fa-medal"></i>],
            [<i className="fas fa-hand-holding-usd"></i>],
            [<i className="fas fa-comment-dollar"></i>],
            [<i className="fas fa-temperature-high"></i>],
            [<i className="fas fa-users"></i>],
            [<i className="fas fa-handshake"></i>],
            [<i className="fas fa-share-alt"></i>],
            [<i className="fas fa-history"></i>],
            [<i className="fas fa-check-double"></i>],
            [<i className="fas fa-power-off"></i>],
        ]
    }

    allChallenges = () => {
        axios.get(`/challenges/challenges.json`)
        .then(res => {
            const allMyChallenges = []
            res.data.map(eachChallenge => {
                allMyChallenges.push(eachChallenge)
            })
            this.setState({ challenges: allMyChallenges})
        })
    }

     // MODAL
    openModal = value => {
        this.setState({
          challengeSelect: [this.state.challenges[value]],
          modalIsOpen: true
        });

    };

    closeModal = () => {
      this.setState({ modalIsOpen: false });
    };

    render() {
        const { challenges, challengeSelect } = this.state
        return(
            <>
                <div className={styles.wrapperChallenge}>
                    <h1>Challenges</h1>
                    <hr></hr>
                    <div className={styles.containerChallenge}>
                        <div className={styles.wrapperAllChallenge}>
                        <h2>Big Challenges</h2>
                            <div className={styles.bigChallenges}>
                            {   
                                challenges.map((theChallenge, i) => {
                                    if(theChallenge.points >= 99){
                                        return(
                                            <>
                                            <div
                                            className={styles.biger} 
                                            key={i}
                                            id={i}
                                            onClick={() => this.openModal(i)}
                                            >
                                                <div className={styles.upSmallWrapper}>
                                                    <span>Points: {theChallenge.points}</span>
                                                    <div className={styles.referencesIcon}>
                                                        {this.state.icons[i]}
                                                    </div>
                                                </div>
                                                <div className={styles.theTitle}>
                                                    <span>{theChallenge.title}</span>
                                                </div>
                                                <div className={styles.smallBottom}>
                                                    <button 
                                                    onClick={() => this.openModal(i)}
                                                    >
                                                        Tips and Docs
                                                    </button>
                                                    <div className={styles.beautyCircle}></div>
                                                </div>
                                            </div>
                                            </>
                                        )
                                    }
                                })
                            }
                            </div>
                        </div>
                        <div className={styles.wrapperAllChallenge}>
                        <h2>Monthly Challenges</h2>
                            <div className={styles.regularChallenges}>
                                {
                                    challenges.map((theChallenge, i) => {
                                        if(theChallenge.points < 99){
                                            return(
                                                <>
                                                <div
                                                className={styles.regular}
                                                key={i}
                                                id={i}
                                                onClick={() => this.openModal(i)}
                                                >
                                                    <div className={styles.smallWrapper}>
                                                        <span>Points: {theChallenge.points}</span>
                                                        <div className={styles.referencesIcon}>
                                                            {this.state.icons[i]}
                                                        </div>
                                                    </div>
                                                    <div className={styles.theTitle}>
                                                        <span>{theChallenge.title}</span>
                                                    </div>
                                                    <div className={styles.smallBottom}>
                                                        <button 
                                                        onClick={() => this.openModal(i)}
                                                        key={i}
                                                        id={i}
                                                        >
                                                            Tips and Docs
                                                        </button>
                                                        <div className={styles.beautyCircle}></div>
                                                    </div>
                                                </div>
                                                </>
                                            )
                                        }
                                    })
                                }
                            </div>
                        </div>
                    </div>
                    <Modal
                        isOpen={this.state.modalIsOpen}
                        onAfterOpen={this.afterOpenModal}
                        onRequestClose={this.closeModal}
                        style={CustomStyleModal}
                        className={CustomStyleModal.Modal}
                        overlayClassName={CustomStyleModal.Overlay}
                        contentLabel="GREENLINK"
                    >
                        <div className={CustomStyleModal.contentModal}> 
                        <div onClick={this.closeModal}><i className="fas fa-times"></i></div>
                            <div className={CustomStyleModal.descriptionChallenge}>
                            {
                                challengeSelect.map((challenge) => {
                                    return(
                                        <>
                                        <div
                                        key={challenge.id}
                                        id={challenge.id}
                                        className={CustomStyleModal.bodyChallenge}
                                        >
                                            <h2>{challenge.title}</h2>
                                            <p>{challenge.description}</p>
                                        </div>
                                        <div className={CustomStyleModal.tipsForChallenge}>
                                        {
                                            challenge.tips.map((eachTip, i) => {
                                                return(
                                                    <>
                                                    <div 
                                                    key={i}
                                                    id={i}
                                                    className={CustomStyleModal.wrapperTips}
                                                    >
                                                        <div className={CustomStyleModal.numberTips}>
                                                            <h3>0{i + 1} <span> / 0{challenge.tips.length}</span></h3>
                                                        </div>
                                                        <div className={CustomStyleModal.bodyTips}>
                                                            <span>{eachTip.title}</span><br></br>
                                                            <span>Type: {eachTip.type_id}</span>
                                                            <p>{eachTip.description}</p>
                                                        </div>
                                                    </div>
                                                    </>
                                                )
                                            })
                                        }
                                        </div>
                                        </>
                                    )
                                })
                            }
                            </div>

                        </div>
                    </Modal>
                </div>
            </>
        )
    }

    componentDidMount(){
        this.allChallenges()
    }

    UNSAFE_componentWillMount() {
        Modal.setAppElement('body');
      }
}