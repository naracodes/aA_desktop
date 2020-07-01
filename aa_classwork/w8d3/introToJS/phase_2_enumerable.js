//Enumerable

// 4. myEach

// [1, 2, 3, 4]
// [1,2,3,4].myEach

Array.prototype.myEach = function(callback) {
    let arr = [];
    for (let i = 0; i < this.length; i++) {
      arr.push(callback(this[i]));
    }
    return arr;
}

const doubler = function(num) {
    return num * 2;
}

// 5. myMap

Array.prototype.myMap = function(callback) {
    // this.myEach(callback);
    return this.myEach(callback) 
}



// 6. Myreduce

Array.prototype.myReduce = function(callback,intialValue) {
    arr = this;

    if (intialValue === undefined) {
        intialValue = arr[0];
        arr = arr.slice(1);
    }

    let acc = intialValue;

    arr.myEach(el => { acc = callback(acc, el) });
   
    return acc;
}

// arr = [1, 2, 3, 4]
// arr.inject do |acc, el|
//     return acc + el
// end

// arr.myReduce( (acc, el, initialValue) => acc + el)

// const array1 = [1, 2, 3, 4];
// const reducer = (accumulator, currentValue) => accumulator + currentValue;

// // 1 + 2 + 3 + 4
// console.log(array1.reduce(reducer));
// // expected output: 10

// // 5 + 1 + 2 + 3 + 4
// console.log(array1.reduce(reducer, 5));
// // expected output: 15
