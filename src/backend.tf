terraform {
  backend "s3" {
    region         = "eu-west-3"
    bucket         = "tfst"
    key            = "/azure/tfst.tfstate"
    role_arn       = "arn:aws:iam::terraform:role/deploy"
  }
}
