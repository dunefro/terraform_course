terraform {
  backend "s3" {
      bucket = "terraform-test-vp"
      key = "terraform/demo-4"
  }
}