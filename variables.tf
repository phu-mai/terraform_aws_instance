variable "name_instance" {
    default = "example.com"
}
variable "instance_type" {
    description = "The type of instance to start"
    default = "t2.micro"
}
variable "ami" {
    description = "ID of AMI to use for the instance"
    default = "ami-8e0205f2"
}
variable "key_name" {
    description = "The key name to use for the instance"
    default = ""
}
variable "subnet_id" {
    description = "The VPC Subnet ID to launch in"
    default = ""
}
variable "servers" {
    description = "Number of instances to launch"
    default=1
}
variable "ebs_size" {
    default = 1
}
variable "availability_zone" {
    default = 0
}

variable "ebs_type" {
    description = "Additional EBS block devices type to attach to the instance"
    default = "gp2"
}
variable "source_dest_check" {
    description = "Controls if traffic is routed to the instance when the destination address does not match the instance. Used for NAT or VPNs."
    default = true
}
variable "ebs_device_name" {
    description = "Additional EBS block devices to attach to the instance"
    default = "/dev/xvdb"
}
variable "ssh_key" {
    default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCrCrW/11iKW2QTKMJyBJY9AJbnPT6QzupkXARXIKDj0NsubjOGVLl3drfK1jWRrFa3JDecYaoHAzTriGa0nwD2DyyO3hBr8Q5feXvSFS9OXnaFI5L74lxSpVlPNTCrPVtJLLlMgHUx9boakHMJWFCjBbcyBO5t9PXMhfLqjICPxJMlvK1KCvEnmCd1LXhsxh/hmXr8WtGlriqJBGH5tNb+X3+bx2RP/NiegG52QqkOFwHKm09vSIY15L9/AAWOxiFKYVzutgT4BgQMBZKWS2o1zvs1+nGyrWvGdYUJz/trpg5XbYdxWJz++Jh2dLHr0OggnbZ+CHGACBcjSxt2aDVF"
}

variable "security_groups" {
    description = "A list of security group IDs to associate with"
    default = ["default"]
    type    = "list"
}

variable "path_to_private_key" {
    description = "For local connection remote to destination instances."
    default = "~/.ssh/id_rsa"
}

variable "iam_instance_profile" {
    description = "The IAM Instance Profile to launch the instance with. Specified as the name of the Instance Profile."
    default = ""
}

variable "create_ebs" {
    default     = false
    description = "If set to true, create an EBS for the instances"    
}

variable "associate_public_ip_address" {
  description = "If true, the EC2 instance will have associated public IP address"
  default     = false
}
variable "private_ip" {
  description = "Private IP address to associate with the instance in a VPC"
  default     = ""
}