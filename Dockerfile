# starting from golang alpine base image
FROM golang:1.16.4-alpine AS build-env

# making goviolin my working directory
WORKDIR /goviolin

# Copy the source code
COPY . .

# creating go.mod file
RUN rm -f go.mod go.sum
RUN go mod init violin && go mod tidy && go mod vendor

# for go modules
ENV GO111MODULE=on

RUN export CGO_ENABLED=0 


RUN go build -o goviolin .


FROM alpine:latest

COPY --from=build-env /goviolin /goviolin

WORKDIR /goviolin

EXPOSE 8081


CMD ["./goviolin"]