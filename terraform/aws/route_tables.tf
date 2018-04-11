# public subnets
resource "aws_route_table" "public_route_table" {
    vpc_id = "${aws_vpc.bootstrap_vpc.id}"
    tags {
        Name = "${var.env}-Public Subnet Route Table"
    }
}

resource "aws_route" "internet_access_igw" {
  route_table_id = "${aws_route_table.public_route_table.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = "${aws_internet_gateway.igw_bootstrap_vpc.id}"
}

resource "aws_route_table_association" "route_public_subnets" {
  count          = "${length(var.azs)}"
  subnet_id      = "${element(aws_subnet.public_subnets.*.id, count.index)}"
  route_table_id = "${aws_route_table.public_route_table.id}"
}

# private subnets
resource "aws_route_table" "private_route_table" {
    vpc_id = "${aws_vpc.bootstrap_vpc.id}"
    tags {
        Name = "${var.env}-Private Subnet Route Table"
    }
}

resource "aws_route" "default_nat_private" {
  route_table_id = "${aws_route_table.private_route_table.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id = "${aws_nat_gateway.gw.id}"
}

resource "aws_route_table_association" "route_private_subnets" {
  count          = "${length(var.azs)}"
  subnet_id      = "${element(aws_subnet.private_subnets.*.id, count.index)}"
  route_table_id = "${aws_route_table.private_route_table.id}"
}
