// # The prime factors of 13195 are 5, 7, 13 and 29.

// # What is the largest prime factor of
// the number 600851475143 ?

// # answer: 6857
// # run time: .311 (not compiled)
package main

import "fmt"
import "math/big"

func Factors(max int) int {
	fact := 0

	for i := 3; i < max; i += 2 {
		if max%i == 0 && (i *Int)ProbablyPrime(1) {
			if i > fact {
				fact = i
			}
		}
	}
	return fact
}

// func Prime(prime int) bool {
// 	if (prime%2 != 0) && (prime%3 != 0) {
// 		for i := 5; i < prime; i += 2 {
// 			if prime%i == 0 {
// 				return false
// 				break
// 			}
// 		}
// 	}
// 	return true
// }

func (x *Int) ProbablyPrime(n int) bool

func main() {
	fmt.Println(Factors(600851475143))
}
