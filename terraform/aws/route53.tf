### maybe later
/*
resource "aws_route53_record" "bootstrap-elb" {
    zone_id = "${var.public_dns_zone_id}"
    name = "concourse.system.${var.system_domain}"
    type = "CNAME"
    ttl = "30"
    records = [
        "${aws_elb.BootstrapHttpElb.dns_name}"
    ]
}
*/
