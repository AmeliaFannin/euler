// # The prime factors of 13195 are 5, 7, 13 and 29.

// # What is the largest prime factor of
// the number 600851475143 ?

// # answer: 6857
// # time: .228s

package main

import "fmt"

func primeGenerator(max int) chan int {
	out := make(chan int, 1)
	primes := []int{2}

	go func() {
		out <- 2
		for i := 3; i <= max/i; i += 2 {
			if primeCheck(primes, i) {
				out <- i
				primes = append(primes, i)
			}
		}
	}()
	return out
}

func primeCheck(primes []int, candidate int) bool {
	for _, known_prime := range primes {
		if candidate%known_prime == 0 {
			return false
		}
	}
	return true
}

func factors(max int, in <-chan int) chan int {
	out := make(chan int)
	limit := max

	go func() {
		for n := range in {

			if n <= limit && max%n == 0 {
				out <- n
				limit = limit / n
			} else if n > limit {
				close(out)
			}
		}
	}()
	return out
}

func main() {
	max := 600851475143
	gen := primeGenerator(max)
	out := factors(max, gen)
	pf := 0

	for n := range out {
		pf = n
	}
	fmt.Println(pf)
}
