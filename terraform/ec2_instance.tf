# Key Pair
resource "aws_key_pair" "ubuntu" {
  key_name   = "ubuntu_key_pair"
  public_key = file("../KeyPair.pub")
}

# EC2 Instance
resource "aws_instance" "ubuntu_ec2" {
  key_name      = aws_key_pair.ubuntu.key_name
  ami           = "ami-097a2df4ac947655f"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public.id

  tags = {
    Name = "Jenkins-EC2"
  }

  vpc_security_group_ids = [
    aws_security_group.security_group.id
  ]

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("../KeyPair")
    host        = self.public_ip
  }

  ebs_block_device {
    device_name = "/dev/sda1"
    volume_type = "gp2"
    volume_size = 30
  }
}