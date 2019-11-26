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
        <div className="network-wrapper">
            {
                this.state.myNetwork.map((person, i) => {
                    return(
                        <div
                        className="person-profile"
                        key={i}
                        id={i}
                        >
                            <p>{person.zipcode}</p>
                            <p>{person.user_email}</p>
                            <p>{person.points}</p>                        
                        </div>
                    )
                })
            }
        </div>
        )
    }

    componentDidMount(){
        this.neighborhood()
    }

}