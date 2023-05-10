terraform {
  backend "s3" {
    bucket = "terraform-ravi"
    key    = "05.s3-state/terraform.tfstate"
    region = "us-east-1"
  }
}

resource "aws_instance" "ec2" {
  ami = "ami-0b5a2b5b8f2be4ec2"
  instance_type= "t3.micro"
  vpc_security_group_ids = ["sg-08d9f5a8a2fc2e8b4"]
  tags = {
    Name = "demo"
  }
}