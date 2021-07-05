variable "AWS_SECRET_KEY" {
  type = string
}
variable "AWS_ACCESS_KEY" {
  type = string
}
variable "USER" {
  type = string
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
variable "PUBLIC_KEY_PATH" {
  
}
variable "PRIVATE_KEY_PATH" {
  
}