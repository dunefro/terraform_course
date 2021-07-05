data "aws_instances" "example_data" {
    instance_tags = {
      "type" = "demo-5"
    }
}
resource "aws_security_group" "demo-5-sg" {
  name = "demo-5-sg"

  ingress {
    from_port   = "22"
    to_port     = "22"
    protocol    = "tcp"
    cidr_blocks = formatlist("%s/32",data.aws_instances.example_data.public_ips)
  }
}

