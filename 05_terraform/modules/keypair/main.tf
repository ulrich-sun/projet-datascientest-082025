resource "tls_private_key" "this" {
  algorithm = "RSA"
  rsa_bits  = 2048
}


resource "aws_key_pair" "this" {
  key_name   = var.key_name
  public_key = tls_private_key.this.public_key_openssh
}




resource "local_file" "this" {
  content  = tls_private_key.this.private_key_pem
  sensitive = true
  filename = var.private_key_path
  file_permission = "0400"
}