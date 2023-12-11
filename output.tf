output "public_subnet_ip" {
  description = "print Ec2 instance for public ip"
  value       = aws_instance.ec2_demo1.public_ip

}

output "private_subnet_ip" {

  description = "print Ec2 instance for private ip"
  value       = aws_instance.ec2_demo1.private_ip

}

output "ec2_status" {
  description = "ec2 instance status"
  value       = aws_instance.ec2_demo1.instance_state

}


#output "public_dns" {
# description = "print public dns name of teh ec2 instace"
#valvalue    = aws_instance.ec2_demo1.public_dns
#}

output "vpc_aws" {
  description = "new vpc"
  value       = data.aws_subnets.public_subnents

}