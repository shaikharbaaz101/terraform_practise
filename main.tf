terraform { 

  required_providers { 

    aws = { 

      source  = "hashicorp/aws" 

      version = "~> 4.16" 

    } 

  } 

  

  required_version = ">= 1.2.0" 

} 

  

provider "aws" { 

  region  = "ap-south-1" 

  profile = "poppy" 

} 

  

resource "aws_instance" "example_server" { 

  ami           = "ami-00bb6a80f01f03502" 

  instance_type = "t2.micro" 

  

  tags = { 

    Name = "terraform1" 

  } 

} 

  

output "public_instance_ip" { 

  value = aws_instance.example_server.public_ip

}