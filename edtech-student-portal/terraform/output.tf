output "vpc_id" {
  value = aws_vpc.student_portal.id
}

output "subnet_id_1" {
 value = aws_subnet.public_1.id
  
}

output "subnet_id_2" {
    value = aws_subnet.public_2.id
  
}
	
