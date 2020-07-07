const MovingObject = require("./moving_object.js");
const Util = require("./util.js");

COLOR = ["pink", "green", "orange", "yellow", "blue", "#be7171"];
RADIUS = [10, 15, 20, 13]

function Asteroid(options) {
    options.color = COLOR[Math.floor(Math.random() * COLOR.length)];
    options.radius = RADIUS[Math.floor(Math.random() * RADIUS.length)];
    options.vel = Util.randomVec(2);
    MovingObject.call(this, options);
}

// Asteroid.inherits(MovingObject);
Util.inherits(Asteroid, MovingObject);

// const a1 = new Asteroid({pos: [20,20]})

module.exports = Asteroid;