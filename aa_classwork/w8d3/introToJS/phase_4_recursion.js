
//range
function range(start, end) {
    if (start === end+1) {
        return [];
    }
    
    return [start].concat(range(start + 1, end));
}

// range(1, 4) -> [1, 2, 3, 4];


// sumRec([1,2,3,4]) -> 10;

function sumRec(arr) {
    if (arr.length === 1) {
        return arr[0];
    }
    
    return arr[0] + sumRec(arr.splice(1));
}


function exponent(base, exp) {
    if (exp === 0) {
        return 1;
    }
    return base*exponent(base, (exp-1));
}

function exponent2(base, exp) {
    if (exp === 0) {
        return 1;
    }
    if (exp === 1) {
        return base;
    }
    if (exp % 2 === 0) {
        return exponent2(base, exp / 2) ** 2; 
    } else {
        return base * exponent2(base, (exp - 1) / 2) ** 2;
    }

}

function fibonacci(n) {
    if (n === 0) {
        return [];
    }
    
    if (n === 1) {
        return [0];
    }

    if (n === 2) {
        return [0, 1];
    }

    let fibs = fibonacci(n - 1);
    fibs.push((fibs[fibs.length - 1] + fibs[fibs.length -2]));
    return fibs;
}

// fibonacci(6) -> [0, 1, 1, 2, 3, 5] 
