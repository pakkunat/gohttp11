// The executable program need in main package.
package main

import (
	// for Fprintf.
	"fmt"
	// for ResponseWriter, Request, HandleFunc, ListenAndServe.
	"net/http"
)

// Handler function.
func handler(writer http.ResponseWriter, request *http.Request) {
	fmt.Fprintf(writer, "Hello World, %s!", request.URL.Path[1:])
}

// main function.
func main() {
	// Subscribe handler.
	http.HandleFunc("/", handler)

	// Listen for port 80.
	http.ListenAndServe("", nil)
}
