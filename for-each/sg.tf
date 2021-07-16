resource "aws_security_group" "example" {
  name = "example" # can use expressions here

  dynamic "ingress" {
    for_each = var.PORTS
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
    }
  }
}