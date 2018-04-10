variable "env" {
  default = "ta-bootstrap"
}
variable "region" {
  default = "us-west-2"
}
variable "profile" {
  default = "ecs"
}
variable "vpc_cidr" {
    default = "10.10.0.0/16"
}
variable "azs" {
  type = "list"
  default = ["us-west-2a"]
}
