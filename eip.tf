resource "aws_eip" "eip" {
  count = var.ip_publico == "yes" ? 1 : 0
}