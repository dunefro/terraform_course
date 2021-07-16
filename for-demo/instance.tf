resource "aws_instance" "example" {
  ami           =var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
  # the public SSH key
  key_name = aws_key_pair.mykeypair.key_name

  tags = { for k, v in merge({ "Name" = "too Awesome" }, var.TAGS) : k => v }
}