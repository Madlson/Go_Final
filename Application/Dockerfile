FROM golang:1.22 AS builder

WORKDIR /go/src/app
COPY . .

RUN go get -d -v ./...
RUN go build -o /go/bin/app

EXPOSE 8080

CMD ["/go/bin/app"]
