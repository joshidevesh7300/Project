provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "lab-id1" {

  ami           = "ami-0f5ee92e2d63afc18"
  instance_type = "t2.micro"

  tags = {
    Name = "lab-id1"
  }

}

resource "aws_vpc" "lab-id1-v1" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "lab-id1-v1"
  }
}

resource "aws_subnet" "lab-id1-s1" {

  vpc_id            = aws_vpc.lab-id1-v1.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "ap-south-1a"

  tags = {
    Name = "lab-id1-s1"
  }
}
