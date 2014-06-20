// # The prime factors of 13195 are 5, 7, 13 and 29.

// # What is the largest prime factor of
// the number 600851475143 ?

// # answer: 6857
// # time: .082s

package main

import "fmt"

// generates numbers until max, send 2, then just odd numbers
func Generate(max int, ch chan<- int) {
	ch <- 2

	for i := 3; i <= max; i += 2 {
		ch <- i
	}
	close(ch)
}

// "in" numbers are filtered, only primes sent "out"
func Filter(in <-chan int, out chan<- int, prime int) {
	for i := <-in; prime <= i.sqrt; i = <-in {
		if i%prime != 0 {
			out <- i
		}
	}
	close(out)
}

func Factors(number int) int {
	rv := 0
	ch := make(chan int)
	go Generate(number, ch)

	for prime := <-ch; number > 1; prime = <-ch {
		for number%prime == 0 {
			number = number / prime
			if prime >= rv {
				rv = prime
			}
		}
		ch1 := make(chan int)
		go Filter(ch, ch1, prime)
		ch = ch1
	}
	return rv
}

func main() {
	fmt.Println(Factors(600851475143))
}
