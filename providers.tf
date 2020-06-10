provider "aws" {
  region  = var.region
  alias   = "account_one"
  profile = "account_one"
}

provider "aws" {
  region  = var.region
  alias   = "account_two"
  profile = "account_two"
}
