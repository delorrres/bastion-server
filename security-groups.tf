resource "aws_security_group" "my_public_app_sg" {
  name        = "Bastion_sg"
  description = "Allow access to this server"
  vpc_id      = data.aws_vpc.main.id

  # INBOUND CONNECTIONS (PERSONAL IPS)
  ingress {
    description = "Allow SSH into the RKS Team PUBLIC IPs"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["207.181.237.92/32", "73.207.56.233/32", "73.54.189.88/32", "176.34.130.192/32", "71.69.155.80/32"]
  }

  #OUTBOUND CONNECTION
  egress {
    description = "Allow bastion connection to servers"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["192.168.0.0/16"]
  }
}