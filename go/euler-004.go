// # A palindromic number reads the same both ways.
// # The largest palindrome made from the product of two 2-digit numbers
// # is 9009 = 91 × 99.

// # Find the largest palindrome made from the product of
// # two 3-digit numbers.

// answer: 906609
// time: .23s

package main

import "fmt"
import "strconv"

func check(num int) bool {
	string_num := strconv.Itoa(num)
	min_index := 0
	max_index := len(string_num) - 1

	for x := 0; x < max_index; x++ {
		if string_num[min_index+x] != string_num[max_index-x] {
			return false
		}
	}
	return true
}

func main() {
	largest_pal := 0

	for x := 999; x > 100; x-- {
		for y := 1; y < 899; y++ {
			num := x * (x - y)

			if num < largest_pal {
				break
			}

			if check(num) {
				largest_pal = num
			}
		}
	}
	fmt.Println(largest_pal)
}
