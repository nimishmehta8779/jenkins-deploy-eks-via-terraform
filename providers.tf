#
# Provider Configuration
#

provider "aws" {
  region = var.aws_region
}

# Using these data sources allows the configuration to be
# generic for any region.
data "aws_region" "current" {
}

/*
data "aws_availability_zones" "available" {
  state = "available"
  blacklisted_names = ["us-east-1e","us-east-1f"]
}
*/
# Not required: currently used in conjuction with using
# icanhazip.com to determine local workstation external IP
# to open EC2 Security Group access to the Kubernetes cluster.
# See workstation-external-ip.tf for additional information.
provider "http" {
}

