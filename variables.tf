#------------------------------------------------------------------------------
# Misc
#------------------------------------------------------------------------------
variable "instance_name" {
description = "Name prefix for resources on AWS"
type = string
default = "test-instance"
}

#------------------------------------------------------------------------------
# AWS CREDENTIALS AND REGION
#------------------------------------------------------------------------------
variable "instance_type" {
description = "AWS EC2 instance type"
default = "t2.micro"
}
variable "region" {
description = "AWS Region the infrastructure is hosted in"
default = "us-east-1"
}

# Map of Linux2 AMI ID / region
variable "ami" {
  type        = map
  description = "The id of the machine image (AMI) to use for the server."

  default = {
    us-east-1      = "ami-0affd4508a5d2481b"
    ap-south-1     = "ami-026f33d38b6410e30"
    eu-central-1   = "ami-0e8286b71b81c3cc1"
   }
}
variable "cloudprovider" {
description = "Select the Cloud Provider"
default = "AWS"
}
variable "size" {
description = "Provide size"
default = "100"
}
variable "Owner" {
description = "Owner name"
default = "Ragesh"
}
variable "private_key" {
  default = "POC-STD-KEY-PAIR.pem"
}
variable "ansible_user" {
  default = "centos"
}
variable "Group" {
description = "Group Tag"
type = string
default = "No-Group"
}
variable "Project" {
description = "Project  name Tag"
type = string
default = "No-Project"
}