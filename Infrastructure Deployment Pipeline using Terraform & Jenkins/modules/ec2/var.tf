variable "ami_id" {
  type        = string
  description = "The AMI ID for EC2 instance"
}

variable "instance_type" {
  type        = string
  description = "Type of EC2 instance"
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID of EC2"
}

variable "ec2_count" {
  type        = number
  description = "The number of EC2 instances"
}

variable "env" {
  type        = string
  description = "Environment name (dev, qa, prod)"
}
 
