// A palindromic number reads the same both ways. 
// The largest palindrome made from the product of two 2-digit numbers 
// is 9009 = 91 × 99.

// Find the largest palindrome made from the product of 
// two 3-digit numbers.

// answer = 906609
// js time = .068s


function palindrome(){
  var largestPal = 0;
  
  for (var numA = 999; numA > 99; numA--){
    for (var numB = 999; numB > 99; numB--){
      
      var product = numA * numB;

      if (product < largestPal){
        break;
      }
         
      if (palCheck(product) === true && product > largestPal){
        largestPal = product;
      }
    }
  }
  
  return largestPal;
}

function palCheck(product){
  var palArray = (product + '').split('');
  
  if ( palArray.join('') === palArray.reverse().join('') ){ 
    return true
  } 
}

console.log(palindrome());




