// # The prime factors of 13195 are 5, 7, 13 and 29.

// # What is the largest prime factor of the number 600851475143 ?

// # answer: 6857
// # time: .063s

function primeFactors(number) {
  var num = number, largest = 0, limit = num;

  for (var i = 2; i < limit; i++) {
    if (num % i === 0) {
      if (primeCheck(num / i)) {
        largest = num / i;
        break;
      }

      if (primeCheck(i)) {
        largest = i;
      }

      limit = num / i;
    }
  }
  return largest;
}

function primeCheck(factor) {
  if (factor % 2 === 0) {
    return false;
  }

  for(var i = 3; i < factor; i += 2) {
    if (factor % i === 0) {
      return false;
    }
  }
  return true;
}

console.log(primeFactors(600851475143))

