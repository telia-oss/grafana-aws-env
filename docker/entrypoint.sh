#!/bin/bash
if [ -z "$AWS_REGION" ]; then
export AWS_REGION="eu-west-1"
fi
/usr/local/bin/ssm-env -with-decryption ./run.sh