// sum
// Write a sum function that takes any number of arguments:
// Solve it first using the arguments keyword, then rewrite your solution to use the ...rest operator.

//Using `arguments`
// function sum() {
//     let sum = 0;
//     let args = Array.from(arguments);
//     args.forEach(ele => {
//         sum = sum + ele;
//     });
//     return sum;
// }

function sum(...args) {
    let sum = 0;
    args.forEach(ele => {
        sum = sum + ele;
    });
    return console.log(sum);
}
// sum(1, 2, 3, 4) === 10;
// sum(1, 2, 3, 4, 5) === 15;

// -- myBind: Re-written;

class Cat {
    constructor(name) {
        this.name = name;
    }

    says(sound, person) {
        console.log(`${this.name} says ${sound} to ${person}!`);
        return true;
    }
}

class Dog {
    constructor(name) {
        this.name = name;
    }
}

const markov = new Cat("Markov");
const pavlov = new Dog("Pavlov");

Function.prototype.myBind = function (obj) {
    // debugger;
    let that = this;
    let args = Array.from(arguments).slice(1);
    return function () {
        let moreArgs = Array.from(arguments);
        return that.apply(obj,args.concat(moreArgs));
    }
}

Function.prototype.myBind = function (obj, ...otherArgs) {
    let that = this;
    return function (...innerArgs) {
        return that.apply(obj, otherArgs.concat(innerArgs));
    }
}

// markov.says("meow", "Ned");
// Markov says meow to Ned!
// true

// bind time args are "meow" and "Kush", no call time args
// markov.says.myBind(pavlov, "meow", "Kush")();
// Pavlov says meow to Kush!
// true

// no bind time args (other than context), call time args are "meow" and "a tree"
// markov.says.myBind(pavlov)("meow", "a tree");
// Pavlov says meow to a tree!
// true

// bind time arg is "meow", call time arg is "Markov"
// markov.says.myBind(pavlov, "meow")("Markov");
// Pavlov says meow to Markov!
// true

// no bind time args (other than context), call time args are "meow" and "me"
// const notMarkovSays = markov.says.myBind(pavlov);
// notMarkovSays("meow", "me");
// Pavlov says meow to me!
// true

// Function.prototype.myBind = function(obj) {
//     let that = this;
//     return function(){
//        return that.apply(obj);
//     }
// }

//curriedSum

// Function.prototype.curry = function(numTimes){
//     let sum = 0;
//     let numbers = [];
//     return function inner(num){
//         sum += num;
//         numbers.push(num);
//         if (numbers.length === numTimes){
//             return sum;
//         }else {
//             return inner;
//         }
//     }
// }

// function sumThree(num1, num2, num3) {
//   return num1 + num2 + num3;
// }

// sumThree(4, 20, 6); // == 30

// you'll write `Function#curry`!
// console.log(f1 = f1(4)); // [Function]
// let f1 = sumThree.curry(3); // tells `f1` to wait until 3 arguments are given before running `sumThree`
// console.log(f1 = f1(6)); // = 30
// console.log(f1 = f1(20)); // [Function]

// // or more briefly:
// console.log(sumThree.curry(3)(4)(20)(6)); // == 30

function curriedSum(numArgs) {
    let numbers = [];
    return function _curriedSum(num) {
        numbers.push(num);
        if (numbers.length === numArgs) {
            return numbers.reduce((acc, ele) => {
                return acc + ele;
            })
        } else {
            return _curriedSum;
        }
    }
}

// const sumNumber = curriedSum(4);
// console.log(sumNumber(5)(30)(20)(1)); // => 56

function sumThree(num1, num2, num3) {
  return num1 + num2 + num3;
}


//.curry use .apply
// Function.prototype.curry = function(numArgs){
//     let numbers = [];
//     let that = this;
//     // debugger;
//     return function inner(num){
//         numbers.push(num);
//         if (numbers.length === numArgs ){
//             return that.apply(null, numbers);
//         } else {
//             return inner;
//         }
//     }
// }

// you'll write `Function#curry`!
// console.log(f1 = f1(4)); // [Function]
// let f1 = sumThree.curry(3); // tells `f1` to wait until 3 arguments are given before running `sumThree`
// console.log(f1 = f1(6)); // = 30
// console.log(f1 = f1(20)); // [Function]

// or more briefly:
// console.log(sumThree.curry(3)(4)(20)(6)); // == 30
// console.log(sumThree.curry(3)(4)(20)(6)); // == 30

// spread operator
Function.prototype.curry = function (numArgs) {
    let numbers = [];
    let that = this;
    // debugger;
    return function inner(num) {
        numbers.push(num);
        // debugger;
        if (numbers.length === numArgs) {
            //return that.apply(null, numbers);
            return that(...numbers);
        } else {
            return inner;
        }
    }
}
console.log(sumThree.curry(3)(4)(20)(6)); // == 30