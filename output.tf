output "ip_address" {
  value = "${aws_instance.vm[*].public_ip}"
}

output "elastic_ip_address" {
  value = "${aws_eip.publicip[*].public_ip}"
}