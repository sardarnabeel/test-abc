resource "aws_instance" "cicd_instance" {
  ami           = "ami-xxxxxxxxxxxxxxxxx"
  instance_type = "t2.micro"
  # key_name      = aws_key_pair.test_keypair.key_name
  key_name      = "dev-keypair"
  security_groups = [aws_security_group.test_sg.id]
  associate_public_ip_address = true
  tags = {
    Name = "cicd-instance"
  }
}
output "pub_ip" {
  value = aws_instance.example_instance.public_ip
  
}