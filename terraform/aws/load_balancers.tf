### maybe later
/*
resource "aws_elb" "BootstrapHttpElb" {
  name = "${var.environment}-Bootstrap-Http-Elb"
  subnets = ["${aws_subnet.BootstrapVpcPublicSubnet_az1.id}"]
  security_groups = ["${aws_security_group.BootstrapHttpElbSg.id}"]

  listener {
    instance_port = 8080
    instance_protocol = "TCP"
    lb_port = 443
    lb_protocol = "SSL"
    ssl_certificate_id = "${var.aws_cert_arn}"
  }
  listener {
    instance_port = 2222
    instance_protocol = "TCP"
    lb_port = 2222
    lb_protocol = "SSL"
    ssl_certificate_id = "${var.aws_cert_arn}"
  }
  health_check {
    target = "TCP:8080"
    timeout = 5
    interval = 30
    unhealthy_threshold = 2
    healthy_threshold = 10
  }

  tags {
    Name = "${var.environment}-Bootstrap Http Elb"
  }
}
*/
