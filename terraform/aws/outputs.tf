output "vpc_id" {
  value = "${aws_vpc.bootstrap_vpc.id}"
}
output "environment" {
    value = "${var.env}"
}
output "region" {
    value = "${var.region}"
}
