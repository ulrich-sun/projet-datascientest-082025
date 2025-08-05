resource "aws_instance" "this" {
  ami                     = var.ami_id
  instance_type           = var.instance_type
  availability_zone       = var.availability_zone
  vpc_security_group_ids       = [var.security_group_id]
  key_name                = var.key_name
  associate_public_ip_address = true
  user_data               = file("${path.module}/${var.script_name}.sh")
  tags = {
    Name = var.instance_name
    Environment = var.environment
    Project = var.project_name
  }
}