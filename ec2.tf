resource "aws_instance" "web" {
  depends_on = [
    aws_key_pair.mtc_auth
  ]
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  vpc_security_group_ids = var.enable_sg ? aws_security_group.optional[*].id : [data.aws_security_group.default.id]
  key_name = aws_key_pair.mtc_auth.key_name

  tags = {
    Name = var.name
  }
}


