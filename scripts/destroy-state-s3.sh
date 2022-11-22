#!/usr/bin/env bash

set -e
set -v

S3_NAME=jenkins-terraform-saw554
DYNAMODB_NAME=jenkins-terraform-saw554
REGION=eu-east-1

aws s3api delete-bucket --bucket $S3_NAME --region $REGION

aws dynamodb delete-table --table-name $DYNAMODB_NAME