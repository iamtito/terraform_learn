variable "app" {
  type = map(object({
    instance_type = string
    tags          = map(string)
    enable_eip    = bool
  }))
  description = "The app variable"
  default = {
    "testapp" = {
      enable_eip    = true
      instance_type = "t2.medium"
      tags = {
        Env  = "Dev"
        Name = "testApp"
      }
    }
    "testappAPI" = {
      enable_eip    = false
      instance_type = "t2.micro"
      tags = {
        Env  = "Dev"
        Name = "testAppAPI"
      }
    }
    "testappBastion" = {
      enable_eip    = true
      instance_type = "t2.micro"
      tags = {
        Env  = "Dev"
        Name = "testAppABastion"
      }
    }
  }
}
