locals {
  instance_type                = "${aws_instance.server.instance_type}"
  id                           = "${aws_instance.server.id}"
  private_ip                   = "${aws_instance.server.private_ip}"
  public_ip                    = "${aws_instance.server.public_ip}"
  availability_zone            = "${aws_instance.server.availability_zone}"
  key_name                     = "${aws_instance.server.key_name}"
  public_dns                   = "${aws_instance.server.public_dns}"
  primary_network_interface_id = "${aws_instance.server.primary_network_interface_id}"
  private_dns                  = "${aws_instance.server.private_dns}"
  security_groups              = "${aws_instance.server.security_groups}"
  vpc_security_group_ids       = "${aws_instance.server.vpc_security_group_ids}"
  subnet_id                    = "${aws_instance.server.subnet_id}"
  tags                         = "${aws_instance.server.tags}"
}

output "instance_type" {
  value       = ["${local.instance_type}"]
}
output "id" {
  value       = ["${local.id}"]
}
output "private_dns" {
  description = "List of private DNS names assigned to the instances. Can only be used inside the Amazon EC2, and only available if you've enabled DNS hostnames for your VPC"
  value       = ["${local.private_dns}"]
}

output "private_ip" {
  description = "List of private IP addresses assigned to the instances"
  value       = ["${local.private_ip}"]
}
output "public_ip" {
  description = "List of public IP addresses assigned to the instances"
  value       = ["${local.public_ip}"]
}
output "availability_zone" {
  description = "List of availability zone assigned to the instances"
  value       = ["${local.availability_zone}"]
}
output "key_name" {
  description = "List of key name to create the instances"
  value       = ["${local.key_name}"]
}
output "public_dns" {
  description = "List of public dns assigned to the instances"
  value       = ["${local.public_dns}"]
}
output "primary_network_interface_id" {
  description = "List of primary network interface id assigned to the instances"
  value       = ["${local.primary_network_interface_id}"]
}
output "security_groups" {
  description = "List of associated security groups of instances"
  value       = ["${local.security_groups}"]
}

output "vpc_security_group_ids" {
  description = "List of associated security groups of instances, if running in non-default VPC"
  value       = ["${local.vpc_security_group_ids}"]
}

output "subnet_id" {
  description = "List of IDs of VPC subnets of instances"
  value       = ["${local.subnet_id}"]
}


output "tags" {
  description = "List of tags of instances"
  value       = ["${local.tags}"]
}