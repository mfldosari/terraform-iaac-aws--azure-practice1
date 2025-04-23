# modules/compute/main.tf
resource "aws_instance" "vm" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]
  key_name               = var.key_name
  
  tags = {
    Name = "Streamlit Server"
  }
}

