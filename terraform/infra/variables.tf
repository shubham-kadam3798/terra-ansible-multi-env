variable "env" {
    description = "This is the environment name eg. dev/stg/prd"
    type = string
}

variable "instance_type" {
  description = "This is the Instance type for EC2 instance eg. t2.micro, t2.small, t2.medium"
  type = string
}

variable "instance_count" {
  description = "This is the number of EC2 instances to be created"
  type = number 
}

variable "ami" {
  description = "This is the AMI ID for the EC2 instance"
  type = string
}

variable "volume_size" {
  description = "This is the volume size for the EC2 instance"
  type = number
  
}