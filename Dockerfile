FROM golang:1.18-alpine

COPY . /hello

WORKDIR /hello

RUN go mod download

EXPOSE 8080

CMD ["go", "run", "main.go"]