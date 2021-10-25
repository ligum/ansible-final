
module "vmapp1" {
  source                = "./modules/vm"
  vm_name               = "vmapp1"
  location              = azurerm_resource_group.rg.location
  resource_group_name   = azurerm_resource_group.rg.name
  availability_set_id   = azurerm_availability_set.availability_set1.id
  network_interface_ids = [azurerm_network_interface.nic_of_web1.id]
  storage_os_disk_name  = "disk1"
  computer_name         = "app1"
  admin_username        = var.admin_username
  admin_password        = var.admin_password


}

module "vmapp2" {
  source                = "./modules/vm"
  vm_name               = "vmapp2"
  location              = azurerm_resource_group.rg.location
  resource_group_name   = azurerm_resource_group.rg.name
  availability_set_id   = azurerm_availability_set.availability_set1.id
  network_interface_ids = [azurerm_network_interface.nic_of_web2.id]

  storage_os_disk_name = "disk2"
  computer_name        = "app2"
  admin_username       = var.admin_username
  admin_password       = var.admin_password


}