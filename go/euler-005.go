// 2520 is the smallest number that can be divided by each of
// the numbers from 1 to 10 without any remainder.

// What is the smallest positive number that is
// evenly divisible by all of the numbers from 1 to 20?

// answer: 232792560
// time: .34s / 0.002s

package main

import "fmt"

func test(a int) bool {
	for i := 19; i > 10; i-- {
		if a%i != 0 {
			return false
		}
	}
	return true
}

func main() {
	a := 2520
	for a = 2520; ; a += 20 {
		if test(a) {
			break
		}
	}
	fmt.Println(a)
}
