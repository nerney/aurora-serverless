#!/bin/bash

rm -rf ./bin

export GO111MODULE=on 
export GOOS=linux 

# one for each function
go build -ldflags="-s -w" -o bin/fetch fetch/main.go