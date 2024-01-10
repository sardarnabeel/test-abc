resource "aws_security_group" "test_sg" {
  name        = "test-sg"
  dynamic "ingress" {
    
    for_each = [22,80,443,3306]
      iterator = "port"
      content {
        from_port = port.value
        to_port = port.value
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
       }
 }
}