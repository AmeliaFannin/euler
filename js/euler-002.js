// Each new term in the Fibonacci sequence is generated 
// by adding the previous two terms. 
// By starting with 1 and 2, the first 10 terms will be:

// #1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

// #By considering the terms in the Fibonacci sequence 
// #whose values do not exceed four million, 
// #find the sum of the even-valued terms.

// # answer: 4613732
// # time: .046s

function fibSequence() {
  var a = 1, b = 1, sum = 0;

  while (a < 4000000) {
    var fib = a + b;
    
    if (fib % 2 === 0) {
      sum += fib;
    }
    b = a;
    a = fib;
  }

  return sum; 
}

console.log(fibSequence());