resource "aws_security_group" "director_sg" {
    name = "${var.env}-bootstrap_director_sg"
    description = "allow incoming connections for bosh director"
    vpc_id = "${aws_vpc.bootstrap_vpc.id}"
    tags {
        Name = "${var.env}-Bosh Director Security Group"
    }
    ingress {
        from_port = 25555
        to_port = 25555
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["${var.vpc_cidr}"]
    }
    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 6868
        to_port = 6868
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 8443
        to_port = 8443
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 8080
        to_port = 8080
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_security_group" "bootstrap_sg" {
    name = "${var.env}-bootstrap_vms_sg"
    description = "Allow connections between Bootstrap VMs."
    vpc_id = "${aws_vpc.bootstrap_vpc.id}"
    tags {
        Name = "${var.env}-Bootstrap VMs Security Group"
    }
    ingress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["${var.vpc_cidr}"]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
    }
}
