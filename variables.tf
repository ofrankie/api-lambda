variable "region" {
  default = "eu-west-1"
}

provider "aws" {
    profile = "default"
    region = "${var.region}"
}

variable "handler" {
  default = "lambda.my_handler"
}

// this will fetch our account_id, no need to hard code it
data "aws_caller_identity" "current" {}
