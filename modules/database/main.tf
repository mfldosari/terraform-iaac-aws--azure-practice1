##########################
# PostgreSQL Flexible Server
##########################

resource "azurerm_postgresql_flexible_server" "this" {
  name                   = "chatbot-database-sda-weclouddata3"  
  resource_group_name    = var.rg_name                        
  location               = var.location                        
  version                = "16"                               
  administrator_login    = var.db_username                     
  administrator_password = var.db_password                     
  storage_mb             = 32768                               
  sku_name               = "B_Standard_B1ms"                  

  # Specify the availability zone during server creation
  zone = "1"  
}

##########################
# PostgreSQL Database
##########################

resource "azurerm_postgresql_flexible_server_database" "this" {
  name      = "postgres"                       
  server_id = azurerm_postgresql_flexible_server.this.id  
  collation = "en_US.utf8"                      
  charset   = "UTF8"                            
  
  # Prevent accidental destruction of the database to ensure data safety
  /* lifecycle {
    prevent_destroy = true  
  }
} */
}

##########################
# PostgreSQL Firewall Rule
##########################

resource "azurerm_postgresql_flexible_server_firewall_rule" "allow_all" {
  name                = "allow_all_ips"
  server_id           = azurerm_postgresql_flexible_server.this.id  
  start_ip_address   = "0.0.0.0"
  end_ip_address     = "255.255.255.255"
}
