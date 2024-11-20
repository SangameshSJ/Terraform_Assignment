# Output the Public IP of the public EC2 instance
output "public_vm_public_ip" {
  value       = module.ec2.public_vm_public_ip
  description = "The public IP address of the EC2 instance in the public subnet."
}

# Output the Private IP of the private EC2 instance
output "private_vm_private_ip" {
  value       = module.ec2.private_vm_private_ip
  description = "The private IP address of the EC2 instance in the private subnet."
}
