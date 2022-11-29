resource "azurerm_resource_group" "resource-group" {
  name     = var.resource-group
  location = var.location
  
}
resource "azurerm_network_security_group" "Nsg01" {
    name                         = var.nsg01
    location                     = var.azure_location
    resource_group_name          = azurerm_resource_group.resource-group.name
}




#############################  create nic01 #################################################
module "networkinterface1"{

  source="./modules/compute/networkinterface"
  # common variables
  # specifics for network interface
  
  nicname             = var.nic01_name
  location            = azurerm_resource_group.resource-group.location
  ResourceGroup       = azurerm_resource_group.resource-group.name

  ipconfigname        = var.nic01_ipconfigname
 
  private_ip_address_allocation                           = var.nic01_private_ip_allocation
  nic_ip_configuration_private_publicip_isrequired        = var.vm01_nic_ip_configuration_private_publicip_isrequired
  
  nic_network_security_group_id                           = azurerm_network_security_group.Nsg01.id

  
  nic_subnet_name                 = var.nic_subnet_name_vm01
  nic_vnet_name                   = var.nic_vnet_name_vm01
  nic_subnet_resource_group_name  = var.nic_subnet_resource_group_name_vm01
}

################  vm module ######################################################################

module "virtualmachine1" {
  source = "./modules/compute/virtualmachine"

  
 location            = azurerm_resource_group.resource-group.location
  ResourceGroup       = azurerm_resource_group.resource-group.name
 

  network_interface_ids = [(module.networkinterface1.network_interface_id)]
  primary_network_interface_id  = ""
  vmname      = var.vmname01
  sizevm         = var.vmsize1

  # variables for storage_image_reference
  publisher      = var.vmpublisher1
  iroffer        = var.vmiroffer1
  skuvm          = var.vmsku1
  versionvm      = var.vmversion1

  # variables for storage_os_disk
  diskname       = var.vmosdiskname1
  cachinmode     = var.vmcachinmode1
  createoption   = var.vmcreateoption1
  disktype       = var.vmdisktype1

  # variables fro os_profile
  computename    = var.vmcomputename1
  adminname      = var.vmadminname1
  adminpass      = var.adminpassword1
  provision_vm_agent        = var.provision_vm_agent
  enable_automatic_upgrades = var.enable_automatic_upgrades
  timezone                  = var.timezone


}
################################Vm01_datadisk_code##################################################
resource "azurerm_managed_disk" "main" {
  count = length(var.datadisk_disk_size_gb)
  name                 = "MdD${var.vmname01}0${count.index +1}" 
  location            = azurerm_resource_group.resource-group.location
  ResourceGroup       = azurerm_resource_group.resource-group.name
  storage_account_type = element(var.datadisk_storage_account_type,count.index) #var.datadisk_storage_account_type 
  create_option        = var.datadisk_create_option 
  disk_size_gb         = element(var.datadisk_disk_size_gb,count.index)

  
}

resource "azurerm_virtual_machine_data_disk_attachment" "main" {
    count = length(var.datadisk_disk_size_gb)
  
  managed_disk_id = azurerm_managed_disk.main[count.index].id

  virtual_machine_id = module.virtualmachine1.vm_instance_id
  lun                = 11-count.index
  caching            = "ReadWrite"
  depends_on = [azurerm_managed_disk.main]

}






########################################################################################################
#############################  create nic02 #################################################
module "networkinterface2"{

  source="./modules/compute/networkinterface"
  # common variables
  # specifics for network interface
  
  nicname             = var.nic02_name
   location            = azurerm_resource_group.resource-group.location
  ResourceGroup       = azurerm_resource_group.resource-group.name

  ipconfigname        = var.nic02_ipconfigname
  #nic_ip_configuration_primary = var.ip_configuration_primary_nic02
  #nic_vnetsubnet_id   = data.azurerm_subnet.id #data.azurerm_subnet.id
  private_ip_address_allocation                           = var.nic02_private_ip_allocation
  nic_ip_configuration_private_publicip_isrequired        = var.vm02_nic_ip_configuration_private_publicip_isrequired
  #nic_network_security_group_isrequired                   = var.vm02_nic_network_security_group_isrequired
  #nic_ip_configuration_name                              = var.vm02_nic_ip_configuration_name
  nic_ip_configuration_private_publicip_id                = ""
  nic_network_security_group_id                           = azurerm_network_security_group.Nsg01.id

  
  nic_subnet_name                 = var.nic_subnet_name_vm01
  nic_vnet_name                   = var.nic_vnet_name_vm01
  nic_subnet_resource_group_name  = var.nic_subnet_resource_group_name_vm01



}

################  vm module ######################################################################

module "virtualmachine2" {
  source = "./modules/compute/virtualmachine"
 
  location      = var.azure_location
  ResourceGroup = var.azure_resource_group_name02
  
  network_interface_ids = [(module.networkinterface2.network_interface_id)]
 
  vmname      = var.vmname02
  sizevm         = var.vmsize2


  publisher      = var.vmpublisher2
  iroffer        = var.vmiroffer2
  skuvm          = var.vmsku2
  versionvm      = var.vmversion2


  diskname       = var.vmosdiskname2
  cachinmode     = var.vmcachinmode2
  createoption   = var.vmcreateoption2
  disktype       = var.vmdisktype2


  computename    = var.vmcomputename2
  adminname      = var.vmadminname2
  adminpass      = var.adminpassword2
  provision_vm_agent        = var.provision_vm_agent
  enable_automatic_upgrades = var.enable_automatic_upgrades
  timezone                  = var.timezone
 


}

################################Vm02_datadisk_code##################################################
resource "azurerm_managed_disk" "main1" {
  count = length(var.datadisk_disk_size_gb2)
  name                 = "MdD${var.vmname02}0${count.index +1}" 
  location             = var.azure_location
  resource_group_name  = var.azure_resource_group_name02
  storage_account_type = element(var.datadisk_storage_account_type2,count.index) #var.datadisk_storage_account_type 
  create_option        = var.datadisk_create_option2
  disk_size_gb         = element(var.datadisk_disk_size_gb2,count.index)

  
}

resource "azurerm_virtual_machine_data_disk_attachment" "main1" {
    count = length(var.datadisk_disk_size_gb2)
  
  managed_disk_id = azurerm_managed_disk.main1[count.index].id
  
  virtual_machine_id = module.virtualmachine2.vm_instance_id
  lun                = 11-count.index#{11-count.index}
  caching            = "ReadWrite"
  depends_on = [azurerm_managed_disk.main1]

}



