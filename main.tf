terraform {
  required_providers {
   aws = {
    source  = "hashicorp/aws"
    version = "3.74.2"
  }
 }

 required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "TekvChe" {
  ami           = "ami-0948bc30d008b0e5a"
  instance_type = "m5n.large"
  
  vpc_security_group_ids = ["sg-05f9dbdf02a29fb32"]
  subnet_id = "subnet-0ee2b881b15cff1da"
   
  tags = {
    Name = "TekvChe"
  }
}
