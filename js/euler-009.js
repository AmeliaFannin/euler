// A Pythagorean triplet is a set of three natural numbers, 
// a < b < c, for which,a squared + b squared = c squared

// For example, 3 squared + 4 squared = 9 + 16 = 25 = 5 squared.
// a+b+c = 3+4+5 = 12

// There exists exactly one Pythagorean triplet 
// for which a + b + c = 1000.
// Find the product abc.

// in Ruby
// answer is [375, 200, 425] and product is 31875000
// time  = .091

// in JS
// time = .06s

function pythagoreanTriplet(m, n, goalSum){
  var a = n*n - m*m;
  var b = m * n * 2;
  var c = n*n + m*m;

  var tripletSum = a + b + c;
  var product = a * b * c;

  if(tripletSum === goalSum){
    // console.log(product)
    return product;
  } else {
    if(tripletSum < goalSum){
      n = n + 1;
    }else{
      m = m + 1;
      n = m + 1;
    }
    pythagoreanTriplet(m, n, goalSum);
  }
}

console.log(pythagoreanTriplet(1, 2, 1000));

