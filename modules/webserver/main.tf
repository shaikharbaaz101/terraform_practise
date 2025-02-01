resource "aws_instance" "webserver" { 
  ami           = var.ami_id_1
  instance_type = var.instancetype

  tags = { 
    Name = var.instancename
  } 

}