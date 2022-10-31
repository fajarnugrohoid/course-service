FROM golang:alpine

RUN apk update && apk add --no-cache git

WORKDIR /app

COPY . .

RUN go mod tidy

RUN go build -o /app/course-service cmd/api/main.go

ENTRYPOINT ["/app/course-service"]