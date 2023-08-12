resource "aws_eip" "eip" {
  if var.ip_publico == "yes" {
    count = 1
  }
}