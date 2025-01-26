resource "aws_instance" "example_server" { 
  ami           = var.ami_id_1
  instance_type = var.instancetype

  tags = { 
    Name = var.instancename
  } 

}


resource "aws_instance" "example_server_1" { 
  ami           = var.ami_id_2
  instance_type = var.instancetype

  tags = { 
    Name = var.instancename

  } 

} 