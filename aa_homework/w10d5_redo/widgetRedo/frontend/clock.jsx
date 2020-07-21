import React from 'react';

class Clock extends React.Component {
    constructor() {
        super();
        this.state = {
            datetime: new Date()
        }
        this.tick = this.tick.bind(this);
    }

    tick() {
        this.setState({
            datetime: new Date()
        });
    }

    componentDidMount() {
        this.intervalId = setInterval(this.tick, 1000);
    }

    componentWillUnmount() {
        clearInterval(this.intervalId);
    }

    render() {
        return (
            <>
            <h2>Nara's Clock</h2>
            <div className="nara-clock">
                <h3>Time</h3>
                <h3>{this.state.datetime.toLocaleTimeString()}</h3>
                <h3>Date</h3>
                <h3>{this.state.datetime.toDateString()}</h3>
            </div>
            </>
            
        )
    }
}

export default Clock;