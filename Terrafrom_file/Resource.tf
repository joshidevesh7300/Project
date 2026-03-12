provider "aws"{
  region ="ap-south-1"
  }

resource "aws_instance" "lab-id1"{
  tag{
    Name = "lab-id1"
    }
}
