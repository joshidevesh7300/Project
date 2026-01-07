provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "lab_vm" {
  ami           = "ami-0f5ee92e2d63afc18"
  instance_type = "t3.micro"
  key_name      = "cloud"

  tags = {
    Name      = "devops-lab-vm"
    Project   = "EdTech-Lab"
    Owner     = "Student"
    AutoStop  = "true"
  }
}
