// Create EC2 Instance
resource "aws_instance" "ec2" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  tags = merge(
    var.tags,
    {
      CreatedBy = "Terraform"
    }
  )
}

// Create Elastic IP Address
resource "aws_eip" "ip" {
  count    = var.enable_eip ? 1 : 0
  instance = aws_instance.ec2.id
  tags = merge(
    var.tags,
    {
      CreatedBy = "Terraform"
      Instance  = "${aws_instance.ec2.id}"
    }
  )
}
