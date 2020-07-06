

function flatDeep(arr, depth = 1) {
    if (d > 0) {
        arr.reduce((acc, val) => acc.concat(Array.isArray(val) ? flatDeep(val, depth - 1) : val, [])
  } else {
        arr.slice();
    }
}

const arr = [1, 2, [3, 4, [5, 6]]];

function flatDeep(arr, depth = 1) {
    if (depth > 0) {
        return arr.reduce((acc, val) => {
            if (Array.isArray(val)) {
                return acc.concat(flatDeep(val, depth - 1))
            } else {
                return acc.concat(val)
            }
        }, [])
    } else {
        return arr.slice();
    }
}

const arr = [1, 2, [3, 4, [5, 6]]];

// to enable deep level flatten use recursion with reduce and concat
function flatDeep(arr, d = 1) {
    return d > 0 ? arr.reduce((acc, val) => acc.concat(Array.isArray(val) ? flatDeep(val, d - 1) : val), [])
        : arr.slice();
};

flatDeep(arr, Infinity);
// [1, 2, 3, 4, 5, 6]