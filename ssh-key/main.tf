resource "tls_private_key" "ssh_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "generated_key" {
  key_name   = "generated-key"
  public_key = tls_private_key.ssh_key.public_key_openssh
}

# Save the private key locally (optional)
output "private_key_pem" {
  value       = tls_private_key.ssh_key.private_key_pem
  sensitive   = true
  description = "The private key PEM file for the generated SSH key pair."
}
