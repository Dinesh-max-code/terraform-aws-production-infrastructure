variable "aws_region" {

  description = "AWS Region"

  type = string

  default = "us-east-1"

}

variable "vpc_cidr" {

  description = "VPC CIDR Block"

  type = string

  default = "10.0.0.0/16"

}

variable "instance_type" {

  description = "EC2 Instance Type"

  type = string

  default = "t2.micro"

}

variable "project_name" {

  description = "Project Name"

  type = string

  default = "Terraform AWS Production Infrastructure"

}

variable "environment" {

  description = "Deployment Environment"

  type = string

  default = "production"

}