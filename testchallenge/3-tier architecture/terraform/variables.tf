
variable "azure_subscription_id" {type = string}
variable "azure_tenant_id" {type = string}


variable "azure_resource_group_name" {type = string}
variable "azure_resource_group_name02" {type = string}
variable "azure_location" {type = string}

variable "nsg01" {
  type          = "string"
  description   = "NSG name"
}





variable "vm01_nic_ip_configuration_private_publicip_isrequired" {}
variable "vm02_nic_ip_configuration_private_publicip_isrequired" {}


variable "vm01_nic_network_security_group_isrequired" {type= bool}
variable "vm02_nic_network_security_group_isrequired" {type= bool}


#variable "nic_network_security_group_id" {type= string}

variable "vnet_name" {}

variable "vnet_azure_resource_group_name" {}

variable "subnet_name1" {}

variable "subnet_name2" {}

 variable "provision_vm_agent" {}
  variable "enable_automatic_upgrades" {}
  variable "timezone" {}


variable "vmname01" {}
variable "vmsize1" {}


variable "vmpublisher1" {}
variable "vmiroffer1" {}
variable "vmsku1" {}
variable "vmversion1" {}


variable "vmosdiskname1" {}
variable "vmcachinmode1" {}
variable "vmcreateoption1" {}
variable "vmdisktype1" {}



variable "vmcomputename1"{}
variable "vmadminname1" {}
variable "adminpassword1"{}

variable "nic01_name" {}
variable "nic01_ipconfigname" {}
variable "nic01_private_ip_allocation" {}

variable "nic_subnet_name_vm01" {}
variable "nic_vnet_name_vm01" {}
variable "nic_subnet_resource_group_name_vm01" {}


variable "datadisk_disk_size_gb"{type =list}
variable "datadisk_storage_account_type"{type =list}
variable "datadisk_create_option"{type =string}
variable "datadisk_isrequired"{type = bool}
#####################################################################################


variable "vmname02" {}
variable "vmsize2" {}


variable "vmpublisher2" {}
variable "vmiroffer2" {}
variable "vmsku2" {}
variable "vmversion2" {}


variable "vmosdiskname2" {}
variable "vmcachinmode2" {}
variable "vmcreateoption2" {}
variable "vmdisktype2" {}


variable "vmcomputename2"{}
variable "vmadminname2" {}
variable "adminpassword2"{}

variable "nic02_name" {}
variable "nic02_ipconfigname" {}
variable "nic02_private_ip_allocation" {}
 
variable "datadisk_disk_size_gb2"{type =list}
variable "datadisk_storage_account_type2"{type =list}
variable "datadisk_create_option2"{type =string}
variable "datadisk_isrequired2"{type = bool}
###############################################################################################







 