#!/usr/bin/env bash

echo $1
echo $2
echo $3

aws cloudformation update-stack --stack-name $1 \
--template-body file://$2 --parameters file://$3 \
--region=us-west-2