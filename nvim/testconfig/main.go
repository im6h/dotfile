package main

import "fmt"

func add(x int16) int16 {
	return x + 1
}

func main() {
	fmt.Println("Hello Go")
	fmt.Println(add(1))
}
