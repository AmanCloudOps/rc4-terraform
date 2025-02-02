variable "aws_region" {
  description = "Region specified for aws region"
  default = "us-east-2"
}

variable "aws_ec2_ami_id" {
    description = "ami id for ubuntu instance"
    default = "ami-0cb91c7de36eed2cb"
}

variable "aws_ec2_instance_type" {
  description = "instace type for ec2 instace"
  default = "t2.micro"
}

variable "aws_ec2_instance_name" {
    description = "name given to the ec2 instance"
    default = "terraform-server"
}

variable "aws_root_vol_size" {
    description = "size of root vol for aws ec2"
    default = 10
}

variable "aws_instance_count" {
  description = "count of ec2 instances needed"
  default = 1
}