############################################
# AWS Provider Configuration
############################################
provider "aws" {
  region = "ap-south-1"
}

############################################
# Security Group for Lab EC2
# Purpose: Allow SSH access for students
############################################
resource "aws_security_group" "lab_sg" {
  name        = "devops-lab-sg"
  description = "Security group for DevOps cloud lab"

  ingress {
    description = "Allow SSH from anywhere (Lab purpose)"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "devops-lab-sg"
    Project = "EdTech-Cloud-Lab"
  }
}

############################################
# EC2 Instance for Student Lab
# Using existing AWS Key Pair (cloud)
############################################
resource "aws_instance" "lab_vm" {
  ami           = "ami-0f5ee92e2d63afc18"   # Ubuntu 20.04 - Mumbai
  instance_type = "t3.micro"

  key_name               = "cloud"   # Existing key pair
  vpc_security_group_ids = [aws_security_group.lab_sg.id]

  tags = {
    Name    = "devops-lab-vm"
    Owner   = "Student"
    Purpose = "Hands-on Practice"
    Project = "EdTech-Cloud-Lab"
  }
}

############################################
# Output: Public IP for SSH / Putty access
############################################
output "lab_vm_public_ip" {
  description = "Public IP of DevOps Lab EC2"
  value       = aws_instance.lab_vm.public_ip
}
