resource "aws_instance" "node1" {
  ami = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
}