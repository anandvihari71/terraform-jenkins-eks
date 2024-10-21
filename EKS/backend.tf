terraform {
  backend "s3" {
    bucket = "new-task-calculator"
    key    = "eks/terraform.tfstate"
    region = "ap-south-1"
  }
}