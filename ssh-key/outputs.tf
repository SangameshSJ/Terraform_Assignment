output "key_name" {
  value = aws_key_pair.key_pair.key_name
  description = "The name of the SSH key pair."
}
