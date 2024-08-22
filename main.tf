provider "aws" {
  region = "us-east-1"
}

resource "aws_sns_topic" "devops-ex-8" {
  name = "devops-ex-8"
}

