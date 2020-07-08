const MovingObject = require("./moving_object.js");
const Asteroid = require("./asteroid.js");

Function.prototype.inherits = function(parent) {
    function Surrogate() { };
    Surrogate.prototype = parent.prototype;
    this.prototype = new Surrogate();
    this.prototype.constructor = this;
}

const Util = {
  randomVec(length) {
    const deg = 2 * Math.PI * Math.random();
    return Util.scale([Math.sin(deg), Math.cos(deg)], length);
    },
    // Scale the length of a vector by the given amount.
    scale(vec, m) {
        return [vec[0] * m, vec[1] * m];
    }
};


Util.inherits = function(childClass, parentClass) {
    function Surrogate() { };
    Surrogate.prototype = parentClass.prototype;
    childClass.prototype = new Surrogate();
    childClass.prototype.constructor = childClass;
}

module.exports = Util;