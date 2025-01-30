#create EC2 instances

resource "aws_instance" "this" {
  ami                    = var.ami_id
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  instance_type          = var.environment == "prod" ? "t3.small" : "t3.micro"
  tags = var.ec2_tags
}

#create security group

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and allow outbound traffic"

  ingress {
    from_port   = var.from_port            #all ports
    to_port     = var.to_port            #all ports
    protocol    = "tcp"         # -1 means all protocols like tcp http https
    cidr_blocks = var.cidr_blocks # all IP address
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.cidr_blocks
  }

  tags = var.sg_tags
}    