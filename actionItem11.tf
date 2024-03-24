resource "aws_instance" "RHEL-Server-HTTPD" {
  count         = 1
  ami           = "ami-0fe630eb857a6ec83"
  instance_type = "t2.medium"
  key_name      = "macbook"
  vpc_security_group_ids = [aws_security_group.Allow-HTTP.id]
  tags = {
    Name = "RHEL-Server-HTTPD"
  }
   root_block_device {
    volume_size = 15 
    volume_type = "gp3"
    encrypted   = true
  }
}
