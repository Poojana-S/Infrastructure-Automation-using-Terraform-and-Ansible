resource "aws_instance" "control_node" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = var.instance_type
  key_name                    = var.key_name
  subnet_id                   = aws_subnet.public_subnet.id
  vpc_security_group_ids       = [aws_security_group.control_sg.id]
  associate_public_ip_address  = true

  tags = {
    Name = "${var.project_name}-control-node"
  }
}

resource "aws_instance" "app_server" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = var.instance_type
  key_name                    = var.key_name
  subnet_id                   = aws_subnet.public_subnet.id
  vpc_security_group_ids       = [aws_security_group.app_sg.id]
  associate_public_ip_address  = true

  tags = {
    Name = "${var.project_name}-app-server"
  }
}