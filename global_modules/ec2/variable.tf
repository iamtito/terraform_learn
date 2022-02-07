variable "ami" {
  type        = string
  description = "Specify the ami"
  default     = "ami-01f87c43e618bf8f0"
}

variable "instance_type" {
  type        = string
  description = "The instance type of the resources"
  default     = "t2.micro"
}

variable "tags" {
  default = {
    Env = "Global Module"
  }
}

variable "key_name" {
  type        = string
  description = "The key needed to access the ec2 instance"
  default     = "ubuntu"
}

variable "enable_eip" {
  type        = bool
  description = "Determine if elastic IP needs to be created or not. Default: true"
  default     = true
}