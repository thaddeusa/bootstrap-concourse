### maybe later
/*
resource "aws_security_group" "BootstrapHttpElbSg" {
    name = "${var.environment}-Bootstrap_HttpElb_sg"
    description = "Allow incoming connections for BootstrapHttpElb Elb."
    vpc_id = "${aws_vpc.BootstrapVpc.id}"
    tags {
        Name = "${var.environment}-BootstrapHttpElb Security Group"
    }
    ingress {
        from_port = 80
        to_port = 80
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 443
        to_port = 443
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 4443
        to_port = 4443
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
    }
}
*/
