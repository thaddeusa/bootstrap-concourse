resource "aws_vpc" "bootstrap_vpc" {
    cidr_block = "${var.vpc_cidr}"
    enable_dns_hostnames = true
    tags {
        Name = "${var.env}-bootstrap-vpc"
    }
}
