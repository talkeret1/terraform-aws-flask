# Run LocalStack Container

docker run -d --name localstack -p 4566:4566 localstack/localstack

# Credentials for LocalStack

export AWS_ACCESS_KEY_ID=test
export AWS_SECRET_ACCESS_KEY=test
export AWS_DEFAULT_REGION=us-east-1

# Alias for LocalStack

alias awslocal='aws --endpoint-url=http://localhost:4566'

# Test LocalStack

awslocal sts get-caller-identity

