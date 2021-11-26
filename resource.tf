variable "image" {
 type = string
 default = "ami-0d718c3d715cec4a7"
}

variable "hw" {
 default = "t2.micro"
}

variable "name" {
  default = "module-created-server"
}

variable "nw-name" {
  default = "adarsh-net"
}


resource "aws_instance" "server1" {
  ami           = var.image
  instance_type = var.hw
  tags = {
    Name = var.name
    Env  = "Prod"
  }
}
