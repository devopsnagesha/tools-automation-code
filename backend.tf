terraform {
  backend "s3" {
    bucket = "join-tf-states"
    key    = "tools/state"
    region = "us-east-1"
  }
}