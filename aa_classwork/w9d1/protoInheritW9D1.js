// function Surrogate(){};
// Surrogate.prototype = SuperClass.prototype;
// Subclass.prototype = new Surrogate();
// Subclass.prototype.constructor = Subclass;

// Function.prototype.inherits = function (parent) {
//     function Surrogate() { };
//     Surrogate.prototype = parent.prototype;
//     this.prototype = new Surrogate();
//     this.prototype.constructor = this;
// }

// function MovingObject() { }

// function Ship() { }
// Ship.inherits(MovingObject);

// function Asteroid() { }
// Asteroid.inherits(MovingObject);

// MovingObject.prototype.fly = function () {
//     console.log("I'm flying!")
// }

// Asteroid.prototype.rotate = function () {
//     console.log("I'm rotating!");
// }


// const ship = new Ship();
// ship.fly();

// const asteroid = new Asteroid();
// asteroid.rotate();


function MovingObject() {}

function Ship() {}
Ship.prototype = Object.create(MovingObject.prototype);
Ship.prototype.constructor = Ship;

function Asteroid() {}
Asteroid.prototype = Object.create(MovingObject.prototype);
Asteroid.prototype.constructor = Asteroid;


MovingObject.prototype.fly = function(){
    console.log("I'm flying!")
}

Asteroid.prototype.rotate = function() {
    console.log("I'm rotating!");
}


const ship = new Ship();
ship.fly();
// ship.rotate(); // not a function;
const asteroid = new Asteroid();
asteroid.rotate();

// ship instanceof MovingObject


