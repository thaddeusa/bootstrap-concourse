resource "aws_nat_gateway" "gw" {
  allocation_id = "${aws_eip.nat_eip.id}"
  subnet_id     = "${aws_subnet.public_subnets.0.id}"

  tags {
    Name = "gw NAT"
  }
}

resource "aws_eip" "nat_eip" {
  vpc      = true
}
