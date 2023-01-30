provider "aws" {
  region = "us-west-2"
  alias  = "parent"
}

provider "aws" {
  region = "us-east-1"
  alias  = "child"

  assume_role {
    # role_arn = "arn:aws:iam::<ACCOUNT_ID>:role/<ROLE_NAME>"
    role_arn = "arn:aws:iam::843978443910:role/OrganizationAccountAccessRole"
  }
}

data "aws_caller_identity" "parent" {
  provider = aws.parent
}

data "aws_caller_identity" "child" {
  provider = aws.child
}

