package main

import "fmt"

var (
	version = ""
	commit  = ""
	date    = ""
)

func main() {
	fmt.Println("Helm Test: hello world!")
	fmt.Println("- version:", version)
	fmt.Println("- commit:", commit)
	fmt.Println("- date:", date)
}
