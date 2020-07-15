import React from 'react';

class Tile extends React.Component {
    render() {
        const tile = this.props.tile
        if (tile.explored) {
            if (tile.adjacentBombCount()) {
                return adjacentBombCount();
            } else {
                return 0;
            }
        } else if (tile.bombed) {
            return "B"
        } else if (tile.flagged) {
            return "F"
        } else {
            return "T"
        }

    }
}

export default Tile;