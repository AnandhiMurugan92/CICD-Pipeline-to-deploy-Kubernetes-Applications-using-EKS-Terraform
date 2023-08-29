output "ec2_public_ip" {
  value = aws_instance.myapp-server.public_ip
}

output "avail_zone" {
  value = var.avail_zone
}

output "env_prefix" {
  value = var.env_prefix
}

output "instance_type" {
  value = var.instance_type
}

output "vpc_cidr_block" {
  value = var.vpc_cidr_block
}

output "subnet_cidr_block" {
  value = var.subnet_cidr_block
}
