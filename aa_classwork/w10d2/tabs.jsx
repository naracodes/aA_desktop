import React from "react";

class Tab extends React.Component {
    constructor(props) {
        super(props)
        this.title = props.title;
        this.component = props.component;
        this.state = {
            selected_index: 0
            
        };

        // this.headers = [
        //     {title: 1},
        //     {title: 2}
        // ]
    }

    render() {
        
        const tablist = this.headers.map((header, idx) => {
            if (this.this.state.selected_index === header.title) {
                return <li key={idx}></li> 
            }
        }
            
        // <ul></ul>
    }
}