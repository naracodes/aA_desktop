import React from 'react';
import Tile from './tile';

export class Board extends React.Component {
    constructor(props) {
        super(props);
    }
    
    render() {
        // const boardGrid = this.props.board.grid
        // debugger;
        return (
            <div>
                {this.props.board.grid.map((row, i) => {
                    const eachRow = row.map((el, j) => {
                        return <Tile key={j} tile={el} updateGame={this.props.updateGame} />
                    });
                    return <div key={i}>{eachRow}</div>
                })}
            </div>
        )
    }
}