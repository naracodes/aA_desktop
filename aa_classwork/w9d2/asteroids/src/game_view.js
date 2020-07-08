const Game = require("./game.js");

function GameView(ctx) {
    this.game = new Game();
    this.ctx = ctx;
}

GameView.prototype.start = function() {
    // debugger;
    let that = this;
    setInterval(that.moveObjects.bind(this.ctx), 20)
    // debugger;
    setInterval(that.draw.bind(this.ctx), 20)
} 

module.exports = GameView;