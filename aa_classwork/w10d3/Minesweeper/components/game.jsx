import React from 'react';
import * as Minesweeper from '../backend/minesweeper';
import {Board} from './board'

class Game extends React.Component {
    constructor(props) {
      super(props);
      this.state = { board: new Minesweeper.Board(5, 2)};
      this.updateGame = this.updateGame.bind(this);
    }
    
    updateGame() {

    }

    render() {
        return <Board board={this.state.board} updateGame={this.updateGame} />
        
    }
}

export default Game;