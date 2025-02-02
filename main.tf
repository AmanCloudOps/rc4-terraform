resource "aws_key_pair" "my_key" {
  key_name = "ec2_key"
  public_key = file("/Users/apple/.ssh/id_ed25519.pub")
}
resource "aws_default_vpc" "my_vpc" {
  
}
resource "aws_security_group" "my_sg" {
  name = "Very high security"
  description = "boht hi jada security hai bhai"
  vpc_id = aws_default_vpc.my_vpc.id  
  ingress{
    description = "Allow ssh port 22"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress{
    description = "Allow http port 80"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress{
    description = "Allow all outgoing traffic"
    to_port = 0
    from_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    name = "MySecurity"
  }
}
resource "aws_instance" "my_instance" {
  ami = var.aws_ec2_ami_id
  instance_type = var.aws_ec2_instance_type
  security_groups = [aws_security_group.my_sg.name]  
  key_name = aws_key_pair.my_key.key_name
  root_block_device {
    volume_size = var.aws_root_vol_size
    volume_type = "gp3"
  }
  count = var.aws_instance_count
  tags ={
    name = var.aws_ec2_instance_name
  }
}

