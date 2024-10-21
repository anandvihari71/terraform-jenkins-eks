variable "vpc_cidr" {
  description = "VPC CIDR Block"
  type        = string
}

variable "public_subnets" {
  description = "PUBLIC Sub nets"
  type        = list(string)
}

variable "instance_type" {
  description = "instance type micro"
  type        = string

}
variable "access_key_pair" {
  description = "access key pair"
  type        = string

}