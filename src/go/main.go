package main

import (
	"context"
	"fmt"

	"github.com/aws/aws-lambda-go/lambda"
)

func handler(ctx context.Context, event string) (string, error) {
	fmt.Printf("ctx: %v\n", ctx)
	fmt.Printf("event: %v\n", event)

	return "Hello, Lambda in Go!", nil
}

func main() {
	lambda.Start(handler)
}
