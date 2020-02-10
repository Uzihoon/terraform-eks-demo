provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = "ap-northeast-2"
}

# Using these data sources allows the configuration to be
# generic for any region.
data "aws_region" "current" {}

data "aws_availability_zones" "available" {}

# Not required: currently used in conjuction with using
# icanhazip.com to determine local workstation external IP
# to open EC2 Security Group access to the Kubernetes cluster.
# See workstation-external-ip.tf for additional information.
provider "http" {}

# ## aws provider 후에 backend 설정을해줘야 한다.
# terraform {
#   backend "s3" {
#     bucket         = "tfs-uzihoon"
#     dynamodb_table = "tfl-uzihoon"
#     region         = "ap-northeast-2"
#     key            = "global/serverless/terraform.tfstate"
#     encrypt        = true
#   }
# }
