variable security_group_ports {
  type        = list(number)
  default     = [22, 80, 443]
  description = "List of ports to allow in the security group"
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
variable security_group_name {
  type        = string
  default     = "default-security-group"
  description = "Name of the security group"
}
variable security_group_description {
  type        = string
  default     = "Security group for EC2 instances"
  description = "Description of the security group"
}
