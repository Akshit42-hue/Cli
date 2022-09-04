FROM golang:1.18.4

WORKDIR /home
COPY ./go.mod /home 
COPY ./go.sum /home 
RUN go mod download
COPY *.go ./

RUN go build -o main

CMD ["main"]