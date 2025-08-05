variable key_name {
  type        = string
  default     = "deployer-key"
  description = "Name of the key pair to create or use for SSH access"
}
variable private_key_path {
  type        = string
  default     = ""
  description = "Path to save the private key file"
}