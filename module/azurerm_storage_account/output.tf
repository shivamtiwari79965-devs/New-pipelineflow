output "storage_name" {
  value = azurerm_storage_account.stg.name
}

output "storage_id" {
  value = azurerm_storage_account.stg.id
}

output "primary_blob_endpoint" {
  value = azurerm_storage_account.stg.primary_blob_endpoint
}