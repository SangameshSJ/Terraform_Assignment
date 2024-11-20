# AWS Region for resources
variable "region" {
  description = "The AWS region where resources will be created."
  type        = string
  default     = "us-east-1"
}

# VPC CIDR block
variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}

# Public Subnet CIDR block
variable "public_subnet_cidr" {
  description = "The CIDR block for the public subnet."
  type        = string
  default     = "10.0.1.0/24"
}

# Private Subnet CIDR block
variable "private_subnet_cidr" {
  description = "The CIDR block for the private subnet."
  type        = string
  default     = "10.0.2.0/24"
}

# Availability zone for public subnet
variable "public_az" {
  description = "The availability zone for the public subnet."
  type        = string
  default     = "us-east-1a"
}

# Availability zone for private subnet
variable "private_az" {
  description = "The availability zone for the private subnet."
  type        = string
  default     = "us-east-1a"
}

# EC2 AMI ID to use for instances
variable "ami_id" {
  description = "The ID of the AMI to use for EC2 instances."
  type        = string
  default     = "ami-0b0ea68c435eb488d"  # Update with the correct AMI ID for your region
}

# EC2 instance type
variable "instance_type" {
  description = "The EC2 instance type."
  type        = string
  default     = "t2.micro"
}

# Key name for the EC2 instances (SSH key)
variable "key_name" {
  description = "The name of the SSH key pair to use for EC2 instances."
  type        = string
}

# Public subnet ID (output from networking module)
variable "public_subnet_id" {
  description = "The ID of the public subnet."
  type        = string
}

# Private subnet ID (output from networking module)
variable "private_subnet_id" {
  description = "The ID of the private subnet."
  type        = string
}
