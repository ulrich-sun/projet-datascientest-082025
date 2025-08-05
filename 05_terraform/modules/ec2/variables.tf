variable ami_id {
  type        = string
  default     = ""
  description = "description"
}

variable instance_type {
  type        = string
  default     = "t2.micro"
  description = "Type of the EC2 instance"
}

variable availability_zone {
  type        = string
  default     = ""
  description = "Availability zone for the EC2 instance"
}

variable security_group_id {
  type        = string
  default     = ""
  description = "ID of the security group to associate with the EC2 instance"
}
variable key_name {
  type        = string
  default     = ""
  description = "Name of the key pair to use for SSH access to the EC2 instance"
}
variable instance_name {
  type        = string
  default     = "my-ec2-instance"
  description = "Name tag for the EC2 instance"
}
variable environment {
  type        = string
  default     = "development"
  description = "Environment tag for the EC2 instance"
}
variable project_name {
  type        = string
  default     = "my-project"
  description = "Project tag for the EC2 instance"
}


variable script_name {
  type        = string
  default     = "my-terraform-stack"
  description = "Name of the Terraform stack"
}