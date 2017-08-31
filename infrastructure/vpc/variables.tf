############################
# Set these in terraform.tfvars
############################

variable "account_id" {
    description = "The allowed account id for which to apply these resources - prevents accidental overwrite"
}

variable "terraform_aws_profile" {
    description = "The aws profile terraform should use when loading local credentials"
    default="default"
}

variable "region" {
    description = "The region to deploy the resources to"
}

variable "vpc_cidr_block" {
    description = "The VPC CIDR address range"
    #https://docs.docker.com/docker-for-aws/faqs/#recommended-vpc-and-subnet-setup
    default = "172.31.0.0/16"
}

variable "provisionersrc" {
    description = "The url of this repository"
}

variable "application" {
    description = "The name or name prefix of the application and associated resources"
}