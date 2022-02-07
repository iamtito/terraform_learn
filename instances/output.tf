output "id" {
    value = aws_instance.tito_server.*.id
    description = "Instance ID"
}

output "public_ip" {
    value = aws_instance.tito_server.*.public_ip
    description = "Instance public IP"
}

output "private_ip" {
    value = aws_instance.tito_server.*.private_ip
    description = "Instance Private IP"
    sensitive = true
}