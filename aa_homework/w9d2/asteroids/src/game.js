const MovingObject = require("./moving_object.js");
const Asteroid = require("./asteroid.js");

DIM_X = Math.floor(Math.random() * 500);
// debugger;
DIM_Y = Math.floor(Math.random() * 500);
NUM_ASTEROIDS = ""

function Game() {
    this.asteroids = [];
}

Game.prototype.randomPosition = function () {
    return {pos: [DIM_X, DIM_Y]};
}

Game.prototype.addAsteroids = function() {
    Game.asteroids.push(new Asteroid(randomPosition()))
}

Game.prototype.draw = function(ctx) {
    ctx.clearRect
    this.asteroids.forEach(asteroid => {
        return asteroid.draw();
    });
}

Game.prototype.moveObjects = function() {
    this.asteroids.forEach(asteroid => {
        return asteroid.move();
    })
}

module.exports = Game;