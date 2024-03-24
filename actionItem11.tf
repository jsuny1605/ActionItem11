resource "aws_instance" "RHEL-Server-HTTPD" {
  count         = 1
  ami           = "ami-0fe630eb857a6ec83"
  instance_type = "t2.medium"
  key_name      = "macbook"
  tags = {
    Name = "actionItem11RHEL"
  }
   root_block_device {
    volume_size = 15 
    volume_type = "gp3"
    encrypted   = true
  }
}
resource "aws_instance" "ubuntu1" {
  count         = 1
  ami           = "ami-07d9b9ddc6cd8dd30"
  instance_type = "t2.small"
  key_name      = "macbookreal"

  tags = {
    Name = "actionItem11Ubuntu"
  }
}
