package main

import (
	"log"
	"net/http"
)

func main() {
	http.HandleFunc("/", HelloHandler)
	log.Fatal(http.ListenAndServe(":5000", nil))
}

func HelloHandler(w http.ResponseWriter, r *http.Request) {
	_, _ = w.Write([]byte("Hello, World 1\n Go - the best language\n"))
}
