variable "vpc_cidr" {
  description = "VPC CIDR Block"
  type        = string
}

variable "private_subnets" {
  description = "PUBLIC Sub nets"
  type        = list(string)
}

variable "public_subnets" {
  description = "PUBLIC Sub nets"
  type        = list(string)
}