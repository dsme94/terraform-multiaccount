terraform {
  backend "s3" {
    region  = "eu-west-2"
    acl     = "bucket-owner-full-control"
    encrypt = true
  }
}