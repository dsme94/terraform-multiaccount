module "iam_user_account_two" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "~> 2.0"

  providers = {
    aws = aws.account_two
  }

  name          = "username"
  force_destroy = true

  password_reset_required = false
}