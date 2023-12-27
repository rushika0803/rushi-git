terraform {
  required_providers {
    aws= {
        source = "hashicorp/aws"
        version = "5.31.0"
    }
  }
}
provider "aws" {
    region = "ap-south-1" 
}
resource "aws_instance" "sravani" {
    ami = "ami-03f4878755434977f"
    instance_type = "t2.micro"

    tags = {
      Name = "sravani"
    } 
}