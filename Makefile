goprog: main.go go.sum
	rm -f goprog
	go build

go.sum: go.mod
	go mod tidy

test: goprog
	./goprog

clean:
	rm -f goprog

.PHONY: test clean
