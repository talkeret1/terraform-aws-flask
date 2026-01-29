
output "instance_id" {
  value = aws_instance.flask.id
}

output "vpc_id" {
  value = aws_vpc.main.id
}

output "security_group_id" {
  value = aws_security_group.flask_sg.id
}

output "public_ip" {
  value = aws_instance.flask.public_ip
}