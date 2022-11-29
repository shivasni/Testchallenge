resource "azurerm_key_vault_secret" "keyvaultsecret" {
  name     = "${var.azure_key_vault_secret_name}"
  value    = "${var.azure_key_vault_secret_value}"
  key_vault_id = "${var.azure_key_vault_ID}"
}