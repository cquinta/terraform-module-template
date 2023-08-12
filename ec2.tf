resource "aws_instance" "web" {
  
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  vpc_security_group_ids = var.enable_sg ? aws_security_group.optional[*].id : [data.aws_security_group.default.id]
  key_name = var.chave
  user_data = file(var.user_data_file)

  tags = {
    Name = var.name
  }
}


