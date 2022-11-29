resource "azurerm_virtual_machine" "virtual_machine"{
  name                  = var.vmname
  location              = var.location
  resource_group_name   = var.ResourceGroup
 
  network_interface_ids = var.network_interface_ids
  primary_network_interface_id = var.primary_network_interface_id
  vm_size               = var.sizevm
 



  storage_image_reference {
    publisher = var.publisher
    offer     = var.iroffer
    sku       = var.skuvm
    version   = var.versionvm
  }
  storage_os_disk {
    name              = var.diskname
    caching           = var.cachinmode
    create_option     = var.createoption
    managed_disk_type = var.disktype
  }
  os_profile {
    computer_name  = var.computename
    admin_username = var.adminname
    admin_password = var.adminpass
  }
   os_profile_windows_config {
    provision_vm_agent        = var.provision_vm_agent
    enable_automatic_upgrades = var.enable_automatic_upgrades
    timezone                  = var.timezone
}


}

output "vm_instance_id"{



  value = azurerm_virtual_machine.virtual_machine.id



}



