resource "tls_private_key" "key_pair" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "key_pair" {
  key_name   = "terraform-key"
  public_key = file("~/.ssh/id_rsa.pub")
}
