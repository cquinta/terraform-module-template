variable "hash_commit" {
  default = "806d52dafe9b7fddbc4f0d2d41086ed3cfa02a44"
}

variable "name" {
  type        = string
  description = "Name of product"
}

variable "enable_sg" {
  type        = bool
  default     = false
  description = "Habilitar funcionalidade de criação do SG"
}

variable "ingress_ports" {
  type        = list(number)
  default     = []
  description = "Lista de portas a serem liberadas"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
  description = "Tipo de imagem"

}

variable "chave" {
  type = string
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC+UKAUSPfGsiYjTs6vtwvcdTspyWI5AdsuHnG3aRxXI4WtfgsEQKpMVqVA4FrbuocHj/FoDlyePTVgDyBHvBn7PTc/0HT+vP/JrFB7MKawK3CJFwrKn0P+YF0u0OjSfKT+eUyG9K/tf/7qsG6Y2gcPMYnIeCa1ALwoRkTJT6FT5Ra1VqhwrMt4Bg5znV5iKv4POhqzrBuSGD45cqs1Mr4ICzT55pr0g9wBB144LVE5CZVdHT3MmbxV5YaC7f4B7LDWSmZsGJC+UZZ5Bd5YRkp2u9MS4jG+v2T3R+Aqu9n3WFz7UECfPIde5+t29P4vwlO4C6Ng1tYQc1A88tJmZXBEadjKMo3KOKfgfLoQSNf0M7EA8BZYIDbr76bYpAobqpgd44+xaORQhRf33odBfhrYON+eIUICPHQCBS67xXbzeGUf5QxzStcjreTY0SgkpwoNW5PMVdPuplOW9jh7NktAY1qPR+k9NJZ6JOf4Rtb8YgiEZBdaEIJZgz0GWWhT2rKdxKCXAX9HswM3XphbwL86MJapblvTX9t2m7SpS2ofYgMBeCK4u/QKHEobaz1MYGwcJ36FqIhzqmvx1AYzsTrerqZijkfYxAaRW1hieylmBPUO7pZGHg4VjC9xBLlf2v0/g5FT9qmtATJZPkGvINId/UUf2LaAgM5Zovsx9xtbCw== cquin@catqn-acer"
}