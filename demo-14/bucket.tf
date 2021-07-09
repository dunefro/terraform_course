resource "aws_s3_bucket" "b" {
  bucket = "vmybuck"
  acl    = "private"

  tags = {
    Name = "vmybuck"
  }
}