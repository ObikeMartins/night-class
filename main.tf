# aws providers
provider "aws" {
  region = "us-east-1"
}

# create vpc
resource "aws_vpc" "night-class" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "night-class"
  }
}


# create subnet 
resource "aws_subnet" "night-class" {
  vpc_id     = aws_vpc.night-class.id
  cidr_block = "10.0.1.0/24"
  tags = {
    Name = "night-class"
  }
}

# create instance
resource "aws_instance" "night-class" {
  ami           = "ami-0b72821e2f351e396"
  instance_type = "t2.micro"
  tags = {
    Name = "night-class"
  }
}