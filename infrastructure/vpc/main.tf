provider "aws" {
  version = "~> 0.1"
  allowed_account_ids = ["${var.account_id}"]
  max_retries = 5

  profile = "${var.terraform_aws_profile}"

  region = "${var.region}"
}

data "aws_availability_zones" "available" {}

module "vpc" {
  source = "git@github.com:wedrinkandweknowthings/terraform.git?ref=0.0.1//vpc/public-private"

  name = "${ var.application }-main-vpc"
  application = "${ var.application }"
  provisionersrc = "${ var.provisionersrc }"

  azs = "${ data.aws_availability_zones.available.names }"
  cidr = "${ var.vpc_cidr_block }"
}
