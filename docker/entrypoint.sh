#!/bin/bash
if [ -z "$AWS_REGION" ]; then
AWS_REGION="eu-west-1"
fi
export GF_SERVER_ROOT_URL=`aws ssm get-parameters --names $SSM_PARAMETER_NAME_GRAFANA_ROOT_URL --with-decryption --region $AWS_REGION |jq -r .Parameters[].Value`

export GF_DATABASE_TYPE=postgres
export GF_DATABASE_NAME=main
export GF_DATABASE_USER=`aws ssm get-parameters --names $SSM_PARAMETER_NAME_GRAFANA_RDS_USERNAME --with-decryption --region $AWS_REGION |jq -r .Parameters[].Value`
export GF_DATABASE_PASSWORD=`aws ssm get-parameters --names $SSM_PARAMETER_NAME_GRAFANA_RDS_PASSWORD --with-decryption --region $AWS_REGION |jq -r .Parameters[].Value`
export GF_DATABASE_HOST=`aws ssm get-parameters --names $SSM_PARAMETER_NAME_GRAFANA_RDS_HOST --with-decryption --region $AWS_REGION |jq -r .Parameters[].Value`

export GF_SECURITY_ADMIN_USER=`aws ssm get-parameters --names $SSM_PARAMETER_NAME_GRAFANA_ADMIN_USER_NAME --with-decryption --region $AWS_REGION |jq -r .Parameters[].Value`
export GF_SECURITY_ADMIN_PASSWORD=`aws ssm get-parameters --names $SSM_PARAMETER_NAME_GRAFANA_ADMIN_USER_PASSWORD --with-decryption --region $AWS_REGION |jq -r .Parameters[].Value`

export GF_AUTH_GITHUB_ENABLED=true
export GF_AUTH_GITHUB_CLIENT_ID=`aws ssm get-parameters --names $SSM_PARAMETER_NAME_GRAFANA_GITHUB_CLIENT_ID --with-decryption --region $AWS_REGION |jq -r .Parameters[].Value`
export GF_AUTH_GITHUB_CLIENT_SECRET=`aws ssm get-parameters --names $SSM_PARAMETER_NAME_GRAFANA_GITHUB_CLIENT_SECRET --with-decryption --region $AWS_REGION |jq -r .Parameters[].Value`
export GF_AUTH_GITHUB_ALLOWED_ORGANISATIONS=`aws ssm get-parameters --names $SSM_PARAMETER_NAME_GRAFANA_GITHUB_ALLOWED_ORGANISATIONS --with-decryption --region $AWS_REGION |jq -r .Parameters[].Value`
export GF_AUTH_GITHUB_ALLOW_SIGN_UP=true

./run.sh