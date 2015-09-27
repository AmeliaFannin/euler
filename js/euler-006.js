// The sum of the squares of the first ten natural numbers is,

// 1*2 + 2*2 + ... + 10*2 = 385
// The square of the sum of the first ten natural numbers is,

// (1 + 2 + ... + 10).sqrt = 552 = 3025
// Hence the difference between the sum of the squares of the 
// first ten natural numbers and the square of the sum is 
// 3025 − 385 = 2640.

// Find the difference between the sum of the squares of
//  the first one hundred natural numbers and the square of the sum.

// answer: 25164150
// time: .084s

// js time = .06s

function difference(limit) {
  var sumOfSquares = 0;
  var sumOfNaturalNumbers = 0;

  for (var i = 1; i <= limit; i ++) {
    sumOfSquares += i * i;
    sumOfNaturalNumbers += i;
  }

  return sumOfNaturalNumbers * sumOfNaturalNumbers - sumOfSquares;
}

console.log(difference(100));