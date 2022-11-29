
variable "location" {}
variable "ResourceGroup" {}


variable "nicname" {}
variable "ipconfigname" {}
variable "private_ip_address_allocation" {}

variable "nic_ip_configuration_private_publicip_isrequired" {type= bool}
variable "nic_ip_configuration_private_publicip_id" {type= string}
#variable "nic_network_security_group_isrequired" {type= bool}
variable "nic_network_security_group_id" {type= string}


variable "nic_subnet_name" {}
variable "nic_vnet_name" {}
variable "nic_subnet_resource_group_name" {}



