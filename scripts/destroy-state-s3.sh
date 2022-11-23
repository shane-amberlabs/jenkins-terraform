#!/usr/bin/env bash

set -e
set -v

S3_NAME=jenkins-tf-tfstate-s3
DYNAMODB_NAME=jenkins-tf-dynamodb
REGION=us-east-2

aws s3api delete-bucket --bucket $S3_NAME --region $REGION

# aws dynamodb delete-table --table-name $DYNAMODB_NAME