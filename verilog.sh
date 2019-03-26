#!/bin/bash

if [ $1 = "install-iverilog" ]; then
    docker build -t imux/iverilog ./
fi
docker run --rm --name iverilog -v `pwd`:/root/verilog imux/iverilog $1
