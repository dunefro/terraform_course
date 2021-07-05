resource "aws_key_pair" "example-key" {
  key_name = "mykey"
  public_key = file(var.PUBLIC_KEY_PATH)
}

resource "aws_instance" "example" {
  ami = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
  key_name = aws_key_pair.example-key.key_name

  provisioner "file" {
      source = "./script.sh"
      destination = "/tmp/script.sh"
  }
  provisioner "remote-exec" {
      inline = [
        "chmod +x /tmp/script.sh",
        "/tmp/script.sh"
      ]
  }
  connection {
    host = coalesce(self.public_ip, self.private_ip)
    type = "ssh"
    user = var.USER
    private_key = file(var.PRIVATE_KEY_PATH)
  }
}