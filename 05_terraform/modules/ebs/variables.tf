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
variable volume_size {
  type        = number
  default     = 40
  description = "Size of the EBS volume in GB"
}
variable availability_zone {
  type        = string
  default     = ""
  description = "Availability zone for the EBS volume"
}

variable instance_id {
  type        = string
  default     = ""
  description = "ID of the EC2 instance to attach the EBS volume to"
}