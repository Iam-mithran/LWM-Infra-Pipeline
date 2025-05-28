variable "env" {
  type        = string
  description = "What Env we are creating (dev, qa, production)"
}

variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR"
}

variable "subnet_cidr" {
  type        = string
  description = "SUBNET CIDR"
}

variable "subnet_az" {
  type        = string
  description = "AZ of the Subnet"
}