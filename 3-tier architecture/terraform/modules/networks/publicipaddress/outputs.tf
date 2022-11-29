output "publicipvalue" {
  value = "${azurerm_public_ip.pubip.ip_address}"
}

output "publicipid" {
  value = "${azurerm_public_ip.pubip.id}"
}