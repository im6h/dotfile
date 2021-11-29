package main

import "fmt"

func add(x int) int {
	return x + 1
}

func main() {
	fmt.Print("Hello Go")
	fmt.Print(add(1))
}


