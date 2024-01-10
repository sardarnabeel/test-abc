resource "aws_instance" "example_instance" {
  ami           = "ami-xxxxxxxxxxxxxxxxx"
  instance_type = "t2.micro"
  key_name      = aws_key_pair.test_keypair.key_name
  security_groups = [aws_security_group.test_sg.id]

  tags = {
    Name = "cicd-instance"
  }
}
