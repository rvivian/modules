module "multi_account_example" {
  source = "../../multi-account"

  providers = {
    aws.parent = aws.parent
    aws.child  = aws.child
  }
}

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
