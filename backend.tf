terraform {
  backend "s3" {
    bucket = "new-task-calculator"
    key    = "jenkins/terraform.tfstate"
    region = "ap-south-1"
  }
}