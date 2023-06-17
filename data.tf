data "aws_vpc" "main" {
    state = "available"
    filter {
        name = "tag:Environment"
        values = ["${terraform.workspace}"]
    }
}

data "aws_subnet_ids" "main" {
    vpc_id = data.aws_vpc.main.id
    tags = {
        Name = "vpc-${terraform.workspace}-${var.subnet_tier}-${var.az}"
    }
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Ubuntu
}