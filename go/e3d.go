// # The prime factors of 13195 are 5, 7, 13 and 29.

// # What is the largest prime factor of
// the number 600851475143 ?

// # answer: 6857
// # time: .082s

package main

import "fmt"

// sends sequence of factors
func Generate(ch chan<- int) {
	num := 600851475143

	for i := 3; ; i += 2 {
		if num > 1000000 {
			return
		}
		if num%i == 0 {
			ch <- i
		}
	}
}

// numbers sent to 'out' are not prime
func Filter(in <-chan int, out chan<- int, prime int) {
	for {
		i := <-in
		if i%prime != 0 {
			out <- i
		}
	}
}

func main() {
	bigPrime := 0
	ch := make(chan int)
	done := make(chan bool)

	go Generate(ch)

	// go func() {
	for {
		prime, more := <-ch
		fmt.Println(prime, more)
		if more {
			fmt.Println(prime)
			bigPrime = prime
		} else {
			fmt.Println("DONE")
			done <- true
			return
		}
	}
	// }

	for bigPrime < 1000000 {
		ch1 := make(chan int)
		go Filter(ch, ch1, bigPrime)
		fmt.Println("Filter", ch1)
		ch = ch1
	}

	<-done
	// if prime > 1000000 {
	// 	close(ch)
	// }
	// ch1 := make(chan int)
	// go Filter(ch, ch1, prime)
	// fmt.Println("Filter", ch1)
	// ch = ch1
	// }
}
