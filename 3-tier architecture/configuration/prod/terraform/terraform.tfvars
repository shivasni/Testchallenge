
azure_subscription_id                = ""
azure_tenant_id                      = ""



nsg01  = ""


public_ip_address_id = ""

 

load_balancer = ""

ipconfigname = ""

publicIP02 = ""

vm01_nic_ip_configuration_private_publicip_isrequired = false
vm02_nic_ip_configuration_private_publicip_isrequired = false
vm03_nic_ip_configuration_private_publicip_isrequired = false
vm04_nic_ip_configuration_private_publicip_isrequired = false


vm01_nic_network_security_group_isrequired = true
vm02_nic_network_security_group_isrequired = true
vm03_nic_network_security_group_isrequired = true 
vm04_nic_network_security_group_isrequired = true  


vnet_name = ""
vnet_azure_resource_group_name = ""

subnet_name1 = ""

subnet_name2 = ""





 vmname01 = ""
 vmsize1 = "Standard_D4s_v3"
 vmpublisher1 = ""
 vmiroffer1 = ""
 vmsku1 = ""
 vmversion1 = ""
 vmosdiskname1 = ""
 vmcachinmode1 = "ReadWrite"
 vmcreateoption1 = "FromImage"
 vmdisktype1 = ""
 vmcomputename1 = ""
 vmadminname1 = ""
 adminpassword1 = ""


###################################################### variables for VM1 NIC1##############
nic01_name                         = ""
nic01_ipconfigname                 = ""
nic01_private_ip_allocation        = ""
ip_configuration_primary_nic01     = 

###########################################virtual_machine01##########################################
 vmname02 = ""
 vmsize2 = "Standard_D2s_v3"
 vmpublisher2 = "MicrosoftWindowsServer"
 vmiroffer2 = ""
 vmsku2 = ""
 vmversion2 = ""
 vmosdiskname2 = ""
 vmcachinmode2 = ""
 vmcreateoption2 = ""
 vmdisktype2 = ""
 vmcomputename2 = ""
 vmadminname2 = ""
 adminpassword2 = ""


###################################################### variables for VM1 NIC1##############
nic02_name                         = ""
nic02_ipconfigname                 = ""
nic02_private_ip_allocation        = ""
ip_configuration_primary_nic02     = false

nic_subnet_name_vm01       = ""
nic_vnet_name_vm01         =  ""
#nic_vnetsubnet_id  = 
nic_subnet_resource_group_name_vm01 = ""

###########################################virtual_machine01##########################################
 vmname03 = ""
 vmsize3 = ""
 vmpublisher3 = ""
 vmiroffer3 = ""
 vmsku3 = ""
 vmversion3 = ""
 vmosdiskname3 = ""
 vmcachinmode3 = ""
 vmcreateoption3 = ""
 vmdisktype3 = ""
 vmcomputename3 = ""
 vmadminname3 = ""
 adminpassword3 = ""


###################################################### variables for VM1 NIC1##############
nic03_name                         = ""
nic03_ipconfigname                 = ""
nic03_private_ip_allocation        = ""
ip_configuration_primary_nic03     = 


nic_subnet_name_vm02       = ""
nic_vnet_name_vm02         =  ""

nic_subnet_resource_group_name_vm02 = ""

###########################################virtual_machine01##########################################
 vmname04 = ""
 vmsize4 = ""
 vmpublisher4 = ""
 vmiroffer4 = ""
 vmsku4 = ""
 vmversion4 = ""
 vmosdiskname4 = ""
 vmcachinmode4 = ""
 vmcreateoption4 = ""
 vmdisktype4 = ""
 vmcomputename4 = ""
 vmadminname4 = ""
 adminpassword4 = ""


###################################################### variables for VM1 NIC1##############
nic04_name                         = ""
nic04_ipconfigname                 = ""
nic04_private_ip_allocation        = ""
ip_configuration_primary_nic04    = 



 ##################### Virtual_machine07_data_disk#################################
 datadisk_disk_size_gb              = []
 datadisk_storage_account_type      = [""]
 datadisk_create_option             = ""
 datadisk_isrequired                = 











sqlservername                   = ""
sqladminName                    = ""
sqladminPassWord                = ""

#####################SQL Server###################################

sqlservername1                   = ""
sqladminName1                    = ""
sqladminPassWord1                = ""

keyvault_name                             = ""
keyvault_sku                              = ""
keyvault_diskencryption_status            = ""

