variable counter {
    type = number
    description = "The number of resources to be created"
    default = 1
}
variable ami {
    type = string
    description = "Specify the ami"
    default = "ami-01f87c43e618bf8f0"
}

variable instance_type {
    type = string
    description = "The instance type of the resources"
    default = "t2.micro"
}

variable tags {
    type = map
    description = "The tag which will be associated with the resources"
    default = {
        
        Env = "Test"
        Manage = "Terraform"
        Test = "Test"
    }
}