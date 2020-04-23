#!/usr/bin/env bash

# Write an if/else statement to check if the stack exists
# if it does, run the update command, if it doesn't run the create command
echo $1
echo $2
echo $3
# OUTPUT="$(aws cloudformation describe-stack-resources --stack-name $1)"
# echo "This is the ${OUTPUT}"
# aws cloudformation describe-stack-resources --stack-name $1
# if jq -e . >/dev/null 2>&1 <<<"$json_string"; then
#     echo "Parsed JSON successfully and got something other than false/null"
# else
#    
# aws cloudformation create-stack --stack-name $1 \
# --template-body file://$2 --parameters file://$3 \
# --region=us-west-2
# fi

# aws cloudformation create-stack --stack-name $1 \
# --template-body file://$2 --parameters file://$3 \
# --region=us-west-2

aws cloudformation create-stack --stack-name $1 \
--template-body file://$2 --parameters file://$3 \
--region=us-west-2
