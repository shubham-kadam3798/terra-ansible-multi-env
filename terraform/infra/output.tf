output "ec2_public_ips" {
  value = aws_instance.my_instance[*].public_ip
  description = "value of public ip of ec2 instances"
}
