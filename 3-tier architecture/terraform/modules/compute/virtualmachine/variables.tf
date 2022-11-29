
variable "location" {}
variable "ResourceGroup" {}

variable "vmname" {}
variable "sizevm" {}
variable "network_interface_ids" {type = list}
variable "primary_network_interface_id" {}



variable "publisher" {}
variable "iroffer" {}
variable "skuvm" {}
variable "versionvm" {}


variable "diskname" {}
variable "cachinmode" {}
variable "createoption" {}
variable "disktype" {}


variable "computename" {}
variable "adminname" {}
variable "adminpass" {}

variable "provision_vm_agent"  {type = bool}
variable "enable_automatic_upgrades"{type = bool}
variable  "timezone"  {}    





