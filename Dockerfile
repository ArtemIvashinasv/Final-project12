FROM golang:1.21.6

WORKDIR /Final-project12

COPY go.mod go.sum ./

RUN go mod download

COPY *.go *.db ./

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /Final-project12

CMD ["/Finalproject12"]
