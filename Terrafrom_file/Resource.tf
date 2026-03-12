provider "aws"{
  region ="ap-south-1"
  }

resource "aws_instance" "lab-id1"{
  tag{
    name: "lab-id1"
    }
