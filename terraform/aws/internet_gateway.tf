resource "aws_internet_gateway" "igw_bootstrap_vpc" {
    vpc_id = "${aws_vpc.bootstrap_vpc.id}"
    tags {
        Name = "${var.env}-bootstrap-igw"
    }
}
