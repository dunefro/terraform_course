resource "aws_key_pair" "demo-key" {
  key_name = "demo-5"
  public_key = file(var.PUBLIC_KEY_PATH)
}

resource "aws_instance" "demo-example" {
  ami = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
  key_name = aws_key_pair.demo-key.key_name
  security_groups = [ "demo-5-sg" ]
}