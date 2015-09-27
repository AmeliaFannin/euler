// 2520 is the smallest number that can be divided by each of 
// the numbers from 1 to 10 without any remainder.

// What is the smallest positive number that is 
// evenly divisible by all of the numbers from 1 to 20?

// answer: 232792560
// time: 5.318s

// js time: .65s

isHyperDivisible = require('./hyperDivisible');

function smallestHyperDivisible(limit) {
  var number = 2;

  while (!isHyperDivisible(limit, number)) {
    number = number + 2;
  }

  return number;
}


console.log(smallestHyperDivisible(20));