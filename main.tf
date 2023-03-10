terraform {
  required_providers {
   aws = {
    source  = "hashicorp/aws"
    version = "~> 4.16"
  }
 }

 required_version = ">= 3.74.2"
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
