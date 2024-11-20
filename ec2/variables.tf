variable "ami_id" {
  description = "AMI ID for EC2 instances"
  default     = "ami-0c55b159cbfafe1f0"
}

variable "instance_type" {
  description = "Instance type for EC2"
  default     = "t2.micro"
}

variable "public_subnet_id" {
  description = "Public Subnet ID where the public VM will be deployed"
}

variable "private_subnet_id" {
  description = "Private Subnet ID where the private VM will be deployed"
}

variable "key_name" {
  description = "SSH key name for EC2 instances"
}
