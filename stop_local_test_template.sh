#!/bin/bash

echo "shutting down localstack"
docker container stop $(docker container ls -aq)
docker-compose -f ./local-test-configs/s3-sqs-dynamo-config/docker-compose.yaml down