variable "ami_id" {
  type = string
  default = "ami-09c813fb71547fc4f"
  description = "This RHEL-9 AMI ID"
}

variable "environment" {
  default = "prod"
}
variable "instance_type" {
  default = "t3.micro"
}

variable "ec2_tags" {
  type = map
  default = {
      Project = "expense"
      Component = "backend"
      Envirnoment = "Dev"
      Name = "expense-backend-dev"
  }
}

variable "from_port" {
  type = number
  default = 22
}

variable "to_port" {
  type = number
  default = 22
}

variable "cidr_blocks" {
  type = list
  default =  ["0.0.0.0/0"]
}

variable "sg_tags" {
  type = map
  default = {
     Name = "expense-backend-dev"
  }
}

# ways: cmd, tfvars, env variable, deafult
# 1. command line --> -var "<var-name>=<var-value>"
# 2. tfvars file
# 3. environment variable TF_VAR_<var-name> export TF_VAR_instanace_type="t3.xlarge"
# 4. default