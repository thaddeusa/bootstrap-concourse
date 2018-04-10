locals {
  public_cidr     = "${cidrsubnet(var.vpc_cidr, 8, 0)}"
  private_cidr    = "${cidrsubnet(var.vpc_cidr, 8, 4)}"
}

resource "aws_subnet" "public_subnets" {
  count             = "${length(var.azs)}"
  vpc_id            = "${aws_vpc.bootstrap_vpc.id}"
  cidr_block        = "${cidrsubnet(local.public_cidr, 0, count.index)}"
  availability_zone = "${element(var.azs, count.index)}"

  tags {
    Name = "${var.env}-public-subnet${count.index}"
  }
}

resource "aws_subnet" "private_subnets" {
  count             = "${length(var.azs)}"
  vpc_id            = "${aws_vpc.bootstrap_vpc.id}"
  cidr_block        = "${cidrsubnet(local.private_cidr, 0, count.index)}"
  availability_zone = "${element(var.azs, count.index)}"

  tags {
    Name = "${var.env}-private-subnet${count.index}"
  }
}
