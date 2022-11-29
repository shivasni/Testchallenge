resource "azurerm_network_interface" "network_interface" {
 
  name                  = var.nicname
  location              = var.location
  resource_group_name   = var.ResourceGroup
 
  ip_configuration {
    name                          = var.ipconfigname
    subnet_id                     = data.azurerm_subnet.nicsubnet.id      
    private_ip_address_allocation = var.private_ip_address_allocation
    
  }
 
   

    
}



