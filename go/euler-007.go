// # By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13,
// # we can see that the 6th prime is 13.

// # What is the 10 001st prime number?
// # answer: 104743
// # time: .118s

// in go
// time: .662s compiled time:

package main

import "fmt"

func primeGenerator() int {
	primes := []int{2}
	limit := 10001
	for i := 3; len(primes) < limit; i += 2 {
		if primeCheck(primes, i) {
			primes = append(primes, i)
		}
	}
	return primes[limit-1]
}

func primeCheck(primes []int, i int) bool {
	for _, value := range primes {
		if i%value == 0 {
			return false
		}
	}
	return true
}

func main() {
	fmt.Println(primeGenerator())
}
