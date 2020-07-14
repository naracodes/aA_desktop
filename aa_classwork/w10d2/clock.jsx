import React from "react";

class Clock extends React.Component {
    constructor() {
        super();
        this.title = "Big Nara";
        this.state = {
            current_datetime: new Date()
            // time: 0,
            // date: 0
        } 
        this.tick = this.tick.bind(this);
        this.handle;
        
    }

    tick() {
        this.setState( {current_datetime: new Date()} )
    }

    render() {
        return (
          <>
            <h1>{this.title}</h1>
            <div className='date-box'>
                <h2>Time and Date</h2>
                <div>
                    <h2>{this.state.current_datetime.toDateString()}</h2>
                    <h2>{this.state.current_datetime.toTimeString()}</h2>
                </div>
            </div>
          </>
        );
    }

    componentDidMount() {
        // this.state.time = this.state.current_datetime.toTimeString();
        // this.state.date = this.state.current_datetime.toDateString()
        
        this.handle = setInterval(this.tick, 1000);
    }

    componentWillUnmount() {
        clearInterval(this.handle)
    }
} 

export default Clock;