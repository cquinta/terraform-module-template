output "ip_address" {
  value = "${aws_instance.web[*].public_ip}"
}

output "elastic_ip_address" {
  value = "${aws_public_ip.publicip[*].public_ip}"
}