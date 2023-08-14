FROM golang:1.20

LABEL name="goprog"

WORKDIR /usr/src

COPY go.mod go.sum main.go ./

RUN go mod tidy && go build

CMD [ "./goprog" ]
