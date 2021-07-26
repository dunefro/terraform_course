variable "AWS_REGION" {
    type = string
    default = "us-east-2"
}

variable "AMIS" {
  type = map(string)
  default = {
    "us-east-2" = "ami-00399ec92321828f5"
  }
}