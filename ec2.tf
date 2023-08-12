resource "aws_instance" "web" {
  
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  vpc_security_group_ids = var.enable_sg ? aws_security_group.optional[*].id : [data.aws_security_group.default.id]
  key_name = var.chave
  user_data = file(var.user_data_file)
  eip = var.ip_publico == "yes" ? aws_eip.eip.id : null

  resource "aws_eip_association" "eip_association" {
  instance_id = aws_instance.instance.id
  eip = aws_eip.eip.id
}

  tags = {
    Name = var.name
  }
}


