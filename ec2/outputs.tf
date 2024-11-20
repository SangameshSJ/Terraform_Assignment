output "public_vm_public_ip" {
  value       = aws_instance.public_vm.public_ip
  description = "The public IP address of the EC2 instance in the public subnet."
}

output "private_vm_private_ip" {
  value       = aws_instance.private_vm.private_ip
  description = "The private IP address of the EC2 instance in the private subnet."
}
