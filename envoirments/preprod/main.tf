# ── Resource Groups ──
module "rg_bmw" {
  source   = "../../module/azurerm_resource_group"
  rg_name  = var.rg
  location = var.location
}

module "rg_mustang" {
  source   = "../../module/azurerm_resource_group"
  rg_name  = var.rg1
  location = var.location
}

module "rg_gt" {
  source   = "../../module/azurerm_resource_group"
  rg_name  = var.rg2
  location = var.location
}

# ── Storage Account ──
module "storage_account" {
  source              = "../../module/azurerm_storage_account"
  storage_name        = var.storage_name
  resource_group_name = module.rg_gt.rg_name # ← rg2 (gt-rg) mein banega
  location            = module.rg_gt.rg_location
  account_tier        = var.account_tier
  replication_type    = var.replication_type
}
