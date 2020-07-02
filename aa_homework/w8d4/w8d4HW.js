// Phase I: Callbacks
// Write a function titleize that takes an array of names and a function (callback).
// titleize should use Array.prototype.map to create a new array full of titleized
// versions of each name - titleize meaning "Roger" should be made to read "Mx. Roger
// Jingleheimer Schmidt". Then pass this new array of names to the callback, which should
// use Array.prototype.forEach to print out each titleized name.

function titleize(arr, callback) {
    let titles = arr.map(person => {
        return `Mx. ${person} Jingleheimer Schmidt`
    });

    return callback(titles);
}

function print(arr) {
    arr.forEach(line => {
        return console.log(line);
    })
}

// Array.prototype.myEach = function(callback) {
//     let arr = [];
//     for (let i = 0; i < this.length; i++) {
//       arr.push(callback(this[i]));
//     }
//     return arr;
// }

// const doubler = function(num) {
//     return num * 2;
// }

// function titles(arr) {
//     let mapped = arr.map( el => {
//         return el * 2
//     });
//     return mapped;
// }

Array.prototype.sample = function() {
    return this[Math.floor(Math.random() * this.length)];
}

function Elephant(name, height, tricks) {
    this.name = name;
    this.height = height;
    this.tricks = tricks;
}

Elephant.prototype.trumpet = function() {
    return `${this.name} the elephant goes 'phrRRRRRRRRR!!!!`
}

Elephant.prototype.grow = function() {
    this.height += 12;
}

Elephant.prototype.addTrick = function(trick) {
    this.tricks.push(tricks);
}

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);
let herd = [ellie, charlie, kate, micah];


Elephant.prototype.play = function() {
    `${this.name} is ${this.tricks.sample}`
}

Elephant.herdy = herd;
Elephant.paradeHelper = function(elephant) {
    
}