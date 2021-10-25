# create postgres service
resource "azurerm_postgresql_server" "sql" {
  name                         = "postgresql-vladimir1"
  location                     = azurerm_resource_group.rg.location
  resource_group_name          = azurerm_resource_group.rg.name
  sku_name                     = "B_Gen5_1"
  storage_mb                   = 5120
  backup_retention_days        = 7
  geo_redundant_backup_enabled = false
  auto_grow_enabled            = false
  administrator_login          = "postgres"
  administrator_login_password = var.admin_password
  version                      = "11"
  ssl_enforcement_enabled      = false
}

resource "azurerm_postgresql_firewall_rule" "postgres_firewall" {
  name                = "office"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_postgresql_server.sql.name
  start_ip_address    = data.azurerm_public_ip.ip.ip_address
  end_ip_address      = data.azurerm_public_ip.ip.ip_address
}

data "azurerm_public_ip" "ip" {
  name                = azurerm_public_ip.publicip_for_load_balancer.name
  resource_group_name = var.resource_group_name
}