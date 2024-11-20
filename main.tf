provider "aws" {
  region = var.region
}

module "networking" {
  source             = "./networking"
  vpc_cidr           = "10.0.0.0/16"
  public_subnet_cidr = "10.0.1.0/24"
  private_subnet_cidr = "10.0.2.0/24"
  public_az          = "us-east-1a"
  private_az         = "us-east-1a"
}

module "ssh-key" {
  source = "./ssh-key"
}

module "ec2" {
  source          = "./ec2"
  ami_id          = "ami-01184db239e4c756c"
  instance_type   = "t2.micro"
  public_subnet_id = module.networking.public_subnet_id
  private_subnet_id = module.networking.private_subnet_id
  key_name         = module.ssh-key.key_name
}
