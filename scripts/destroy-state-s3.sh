#!/usr/bin/env bash

set -e
set -v

S3_NAME=saw554-tfstate-s3
DYNAMODB_NAME=saw554-tfstate-dynamodb
REGION=us-east-1

aws s3api delete-bucket --bucket $S3_NAME --region $REGION

aws dynamodb delete-table --table-name $DYNAMODB_NAME