# variables.tf

# Network module variables
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "CIDR block for the subnet"
  default     = "10.0.1.0/24"
}

# Compute module variables
variable "ami_id" {
  description = "AMI ID for the EC2 instance"
}

variable "instance_type" {
  description = "EC2 Instance type"
}

variable "key_name" {
  description = "SSH Key Pair name"
}

variable "rg_name" {
  default = "ma-database-rg"
}

variable "location" {
  default = "East US 2"
}

variable "subscription_id" {
  description = "sub id"
  sensitive = true
}

variable "tenant_id" {
  description = "ten id"
  sensitive = true
}

##########################
# Database Credentials
##########################

# The username for the database
variable "db_username" {
  description = "The username for the database"
}

# The password for the database
variable "db_password" {
  description = "The password for the database"
}
