output "id" {
  value       = aws_instance.ec2.id
  description = "Instance ID"
}

output "public_ip" {
  value       = aws_instance.ec2.public_ip
  description = "Instance public IP"
}

output "private_ip" {
  value       = aws_instance.ec2.private_ip
  description = "Instance Private IP"
  sensitive   = true
}