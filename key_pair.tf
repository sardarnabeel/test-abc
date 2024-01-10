resource "aws_key_pair" "test_keypair" {
  key_name   = "dev-keypair"
  public_key = file("${path.module}/id_rsa.pub")
}