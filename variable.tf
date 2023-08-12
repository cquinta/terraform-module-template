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
  default = "mtckey"
}

variable "user_data_file" {
  type = string
  default = "script.sh"
}

variable "ip_publico" {
  type = string
  default = "no"
}

variable "userdata" {
  type = string
  default = "no"
}