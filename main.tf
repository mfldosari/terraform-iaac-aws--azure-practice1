##########################
# Resource Group Module
##########################

module "resource_group" {
  source   = "./modules/general/resource_group"
  rg_name  = var.rg_name
  location = var.location
}

##########################
# Database Module
##########################

module "database" {
  source      = "./modules/database"
  rg_name     = var.rg_name
  location = var.location
  db_username = var.db_username
  db_password = var.db_password
}



module "network" {
  source      = "./modules/network"
  vpc_cidr    = var.vpc_cidr
  subnet_cidr = var.subnet_cidr
}


module "compute" {
  source          = "./modules/compute"
  ami_id          = var.ami_id  # Amazon Linux 2 (change if needed)
  instance_type = var.instance_type
  subnet_id       = module.network.subnet_id
  security_group_id = module.network.security_group_id
  key_name        = var.key_name 

}
