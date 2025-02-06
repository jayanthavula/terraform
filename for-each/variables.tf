variable "instance" {
  type = map
  default = {
    mysql = "t3.micro"
    backend = "t2.small"
    frontend = "t3.micro"
  }
}

variable "domain_name" {
  default = "jaydevops.online"
}

variable "zone_id" {
  default = "Z06168571D0RSZB8QKC76"
}