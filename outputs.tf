output "instance_public_ip" {
  description = "The public IP of the EC2 instance"
  value       = module.compute.instance_public_ip
}

output "postgresql_fqdn" {
  description = "The FQDN of the PostgreSQL Flexible Server"
  value       = module.database.postgresql_fqdn
}
