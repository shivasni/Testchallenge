output "vault_uri" {
  description = "The URI of the vault for performing operations on keys and secrets"
  value = "${azurerm_key_vault.key_vault.vault_uri}"
}

output "vault_id" {
  description = "The Vault ID"
  value = "${azurerm_key_vault.key_vault.id}" 
}

output "vault_tenant_id" {
  description = "The Azure Active Directory Tenant ID used for authenticating requests to the Key Vault"
  value = "${azurerm_key_vault.key_vault.tenant_id}"
}

output "keyvault_name" {
  value = "${azurerm_key_vault.key_vault.name}" 
}

