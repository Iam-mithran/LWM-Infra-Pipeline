variable "ami_id" {
  type        = string
  description = "Ami id of my EC2"
}

variable "instance_type" {
  type        = string
  description = "Instance Type of my EC2"
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID of my EC2"
}

variable "ec2_count" {
  type        = string
  description = "No of my EC2 to be created"
}

variable "env" {
  type        = string
  description = "What Env we are creating (dev, qa, production)"
}