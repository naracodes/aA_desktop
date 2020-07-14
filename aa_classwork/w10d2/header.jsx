import React from 'react';

class Header extends React.Component {
    constructor(props) {
        super(props);

        this.title = props.title;
        this.content = props.content;
    }

    setIndex() {
        //sets index of tabs.jsx to whichever tab was clicked
    }
    render() {
        return <li onClick={this.setIndex}>{this.title}: {this.content}</li>
    }
}