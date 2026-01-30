# provider "aws" {
#   region                      = "us-east-1"
#   access_key                  = "test"
#   secret_key                  = "test"
#   skip_credentials_validation = true
#   skip_metadata_api_check     = true
#   skip_requesting_account_id  = true

#   endpoints {
#     ec2 = "http://localhost:4566"
#   }
# }

# provider "aws" {
#   region = "us-east-1"
# }

provider "aws" {
  region = "us-east-1"

  access_key = var.use_localstack ? "test" : null
  secret_key = var.use_localstack ? "test" : null

  skip_credentials_validation = var.use_localstack
  skip_metadata_api_check     = var.use_localstack
  skip_requesting_account_id  = var.use_localstack

  endpoints {
    ec2 = var.use_localstack ? "http://localhost:4566" : null
  }
}