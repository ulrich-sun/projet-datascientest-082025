variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "Instance type for the EC2 instance"
}

variable "security_group_ports" {
  type        = list(number)
  default     = [22, 80, 443, 8080, 8069, 5050]
  description = "List of ports to allow in the security group"
}

# variable script_name {
#   type        = string
#   default     = "docker"
#   description = "Name of the Terraform script"
# }

variable "script_name" {
  description = "nom du script à exécuter (k3s ou docker)"
  type        = string
  validation {
    condition     = contains(["k3s", "docker"], var.script_name)
    error_message = "la script_name doit être soit 'k3s' soit 'docker'."
  }
}

variable "stack_name" {
  type        = string
  default     = "Ulrich"
  description = "Name of the stack to deploy (k3s or docker)"
}