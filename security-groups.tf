resource "aws_security_group" "my_public_app_sg" {
  name        = "bastion_sg"
  description = "Allow access to this server"
  vpc_id      = data.aws_vpc.main.id

  # INBOUND CONNECTIONS (PERSONAL IPS)
  ingress {
    description = "Allow SSH into the Deloress PUBLIC IP"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["207.181.237.92/32"] # 0.0.0.0/0
  }

  #VICTOR IP
  ingress {
    description = "Allow SSH into the Victors PUBLIC IP"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["73.207.56.233/32"] # 0.0.0.0/0
  }
  #KEVIN IP
  ingress {
    description = "Allow SSH into the Kevins PUBLIC IP"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["73.54.189.88/32"] # 0.0.0.0/0
  }
  #AMINA IP
  ingress {
    description = "Allow SSH into the Aminas PUBLIC IP"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["176.34.130.192/32"] # 0.0.0.0/0
  }
  #LAUREN IP
  ingress {
    description = "Allow SSH into the Laurens PUBLIC IP"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["71.69.155.80/32"] # 0.0.0.0/0
  }

  #OUTBOUND CONNECTION
  egress {
    description = "Allow bastion connection to servers"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["192.168.0.0/16"] # 0.0.0.0/0
  }
}