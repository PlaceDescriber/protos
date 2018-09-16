#!/bin/bash

mkdir -p generated
for proto in */*.proto; do
    protoc \
        --go_out=plugins=grpc:generated \
        $proto
done
