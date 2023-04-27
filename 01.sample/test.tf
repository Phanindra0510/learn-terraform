resource "aws_instance" "ec2" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3..micro"
  vpc_security_group_ids = ["sg-08d9f5a8a2fc2e8b4"]
  tags = {
    Name = "test"
  }
}