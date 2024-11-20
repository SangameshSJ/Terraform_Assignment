resource "aws_instance" "public_vm" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  subnet_id     = var.public_subnet_id

  tags = {
    Name = "public_vm"
  }

  user_data = <<-EOF
              #!/bin/bash
              apt-get update
              apt-get install -y nginx
              systemctl start nginx
              EOF
}

resource "aws_instance" "private_vm" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  subnet_id     = var.private_subnet_id

  tags = {
    Name = "private_vm"
  }
}
