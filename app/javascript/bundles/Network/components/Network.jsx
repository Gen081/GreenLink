import React from 'react'
import axios from 'axios'


export default class Network extends React.Component{
    state = {
        myNetwork: []
    }
    

    neighborhood = () => {
        axios.get(`/fpl_accounts.json`)
            .then(res => this.setState({ myNetwork: res.data}))
    }
    
    render(){
        return(
            <>
            <div>
                <h1>My Neighborhood</h1>
                <hr></hr>
            </div>
            <div className="container-network">
                <div className="network-wrapper">
                    {
                        this.state.myNetwork.map((person, i) => {
                            return(
                                <div
                                className="person-profile"
                                key={i}
                                id={i}
                                >
                                    <div className="network-person-avatar"></div>
                                    <div>
                                        <p className="person-points">{person.points}</p>                        
                                        <p>{person.user_email}</p>
                                    </div>
                                </div>
                            )
                        })
                    }
                </div>
            </div>
            </>
        )
    }

    componentDidMount(){
        this.neighborhood()
    }

}