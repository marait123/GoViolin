# starting from golang alpine base image
FROM golang:1.16.4-alpine 

# making goviolin my working directory
WORKDIR /goviolin

# Copy the source code
COPY . .

# creating go.mod file
RUN rm go.mod go.sum
RUN go mod init violin && go mod tidy && go mod vendor
# for go modules
ENV GO111MODULE=on

RUN export CGO_ENABLED=0 

# Build the Go app
RUN go build -o goviolin .

# This container exposes port 8081 to the outside world
EXPOSE 8081

# Run the binary program produced by `go build`
CMD ["./goviolin"]