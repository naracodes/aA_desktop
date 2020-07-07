const Asteroid = require("./asteroid.js");
const Util = require("./util.js");
const MovingObject = require("./moving_object.js");
const Game = require("./game");
const GameView = require("./game_view");

window.MovingObject = MovingObject;
window.Util = Util;
window.Asteroid = Asteroid;
window.Game = Game;
window.GameView = GameView;

const movingObj = new MovingObject({
  pos: [200, 200],
  vel: [20, 20],
  radius: 10,
  color: "pink",
});

const a1 = new Asteroid({ pos: [100, 400] });
const a2 = new Asteroid({ pos: [60, 100] });
const a3 = new Asteroid({ pos: [100, 110] });
const a4 = new Asteroid({ pos: [300, 280] });
const a5 = new Asteroid({ pos: [50, 180] });

document.addEventListener('DOMContentLoaded', () => {
    const canvasEl = document.getElementById('game-canvas');
    canvasEl.height = 500;
    canvasEl.width = 500;
    const ctx = canvasEl.getContext('2d');
    
    ctx.fillRect(0, 0, 500, 500);
    
    movingObj.draw(ctx);
    
    a1.draw(ctx);
    a2.draw(ctx);
    a3.draw(ctx);
    a4.draw(ctx);
    a5.draw(ctx);
    
    // debugger;
    const g1 = new GameView(ctx);
    g1.start();
})

console.log("It's working!")