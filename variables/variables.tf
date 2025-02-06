variable "ami_id_ec2" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "This RHEL9 AMI ID"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "ec2_tags" {
  type = map(any)
  default = {
    Project     = "Expense"
    Component   = "backend"
    Environment = "dev"
    Name        = "expense-backed-dev"
  }
}

variable "from_port" {
  type    = number
  default = 22
}

variable "to_port" {
  type    = number
  default = 22
}

variable "cidr_blocks" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}

variable "sg_tags" {
  type = map
  default = {
    Name = "expense-backed-dev"
  }
}
