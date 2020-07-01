// 1. uniq()

// [1, 2, 2, 3, 3, 3] -> [1, 2, 3]

Array.prototype.uniq = function() {
    let numbers = [];
    for (let i = 0; i < this.length; i++) {
        if (!numbers.includes(this[i])) {
            numbers.push(this[i]);
        }
    }
    return numbers;
}

// 2. twoSum()

// [1, 2, -1, 4, -3, 5, -5]
Array.prototype.twoSum = function() {
    let pairs = [];
    for (let i = 0; i < this.length - 1; i++) {
        for (let j = i + 1; j < this.length; j++) {
            if (this[i] + this[j] === 0) {
                pairs.push([i, j]);
            }
        }
    }
    return pairs;    
}


// 3. transpose
// [[3, 6, 1],
//  [7, 1, 8],
//  [4, 5, 9]]
 
//  [[3, 7, 4],
//  [6, 1, 5],
//  [1, 8, 9]]

Array.prototype.transpose = function() {
    let transposed = [];
    let innerArr = [];

    for(let i=0; i < this.length; i++) {
        for (let j = 0; j < this.length; j++) {
            innerArr.push(this[j][i]);
        }
        transposed.push(innerArr);
        innerArr = [];
    }
    return transposed;
}

