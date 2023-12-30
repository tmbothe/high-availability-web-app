#!/bin/bash

#This script automates cloud formation deployment. It takes the following parameters

#Parameters
# $1: Execution mode. Values [deploy, delete, preview]
# $2: Target region
# $3: Cloud formation name
# $4: template file name
# $5: template file parameters

#Usage:
#deploy: ./main.sh deploy us-east-1 mynetwork netowrk.yml network-parameters.json
#preview: ./main.sh preview us-east-1 mynetwork netowrk.yml network-parameters.json
#delete: ./main.sh delete us-east-1 mynetwork 

# Validate parameters
if [[ $1 != "deploy" && $1 != "delete" && $1 != "preview" ]]; then
    echo "ERROR: Incorrect execution mode. Valid values: deploy, delete, preview." >&2
    exit 1
fi

EXECUTION_MODE=$1
STACK_NAME=$3
TEMPLATE_FILE_NAME=$4
PARAMETERS_FILE_NAME=$5
REGION=$2

#Execute Cloudformation CLI
#--parameter-overrides file://$PARAMETERS_FILE_NAME \
if [ $EXECUTION_MODE == "deploy" ] 
then
  aws cloudformation deploy \
    --stack-name $STACK_NAME \
    --template-file $TEMPLATE_FILE_NAME \
    --parameter-overrides file://$PARAMETERS_FILE_NAME \
    --region=$REGION
fi

if [ $EXECUTION_MODE == "delete" ] 
then
  aws cloudformation delete-stack \
    --stack-name $STACK_NAME \
    --region=$REGION
fi

if [ $EXECUTION_MODE == "preview" ] 
then
  aws cloudformation deploy \
    --stack-name $STACK_NAME \
    --template-file $TEMPLATE_FILE_NAME \
    --parameter-overrides file://$PARAMETERS_FILE_NAME \
    --no-execute-changeset \
    --region=$REGION
fi


