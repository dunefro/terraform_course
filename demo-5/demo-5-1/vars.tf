variable "AWS_SECRET_KEY" {
  type = string
}
variable "AWS_ACCESS_KEY" {
  type = string
}
variable "USER" {
  type = string
}
variable "PRIVATE_KEY_PATH" {
  
}
variable "PUBLIC_KEY_PATH" {
  
}

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