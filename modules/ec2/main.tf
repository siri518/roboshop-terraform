resource "aws_instance" "instance" {
  ami   = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids =["sg-01afef600657f35e7"]
  tags = {
    Name = "${var.component_name}-${var.env}"
  }
}

