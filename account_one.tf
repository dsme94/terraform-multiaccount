module "iam_user_account_one" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "~> 2.0"

  providers = {
    aws = aws.account_one
  }

  name          = "username"
  force_destroy = true

  password_reset_required = false
}