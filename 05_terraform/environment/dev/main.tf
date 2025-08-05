module "security_group" {
  source                     = "../../modules/security_group"
  security_group_name        = "my-security-group"
  security_group_description = "Security group for EC2 instances"
  security_group_ports       = var.security_group_ports
  instance_name              = "${local.instance_name}-sg"
  environment                = local.environment
  project_name               = local.project_name
}

module "ec2" {
  source            = "../../modules/ec2"
  ami_id            = data.aws_ami.ubuntu.id
  instance_type     = var.instance_type
  availability_zone = "${local.region}a"
  security_group_id = module.security_group.security_group_id
  key_name          = local.key_name
  instance_name     = local.instance_name
  environment       = local.environment
  project_name      = local.project_name
  script_name       = var.script_name
}



module "ebs" {
  source            = "../../modules/ebs"
  instance_name     = local.instance_name
  environment       = local.environment
  project_name      = local.project_name
  volume_size       = 40
  availability_zone = module.ec2.availability_zone
 instance_id       = module.ec2.instance_id
}



module "keypair" {
  source           = "../../modules/keypair"
  key_name         = local.key_name
  private_key_path = "${path.module}/key/${local.key_name}.pem"
}