output "database_backup_cancel_managements_id" {
  description = "Map of id values across all database_backup_cancel_managements, keyed the same as var.database_backup_cancel_managements except keys with no id are omitted"
  value       = { for k, v in oci_database_backup_cancel_management.database_backup_cancel_managements : k => v.id if v.id != null && length(v.id) > 0 }
}
output "database_backup_cancel_managements_backup_id" {
  description = "Map of backup_id values across all database_backup_cancel_managements, keyed the same as var.database_backup_cancel_managements except keys with no backup_id are omitted"
  value       = { for k, v in oci_database_backup_cancel_management.database_backup_cancel_managements : k => v.backup_id if v.backup_id != null && length(v.backup_id) > 0 }
}
output "database_backup_cancel_managements_cancel_backup_trigger" {
  description = "Map of cancel_backup_trigger values across all database_backup_cancel_managements, keyed the same as var.database_backup_cancel_managements except keys with no cancel_backup_trigger are omitted"
  value       = { for k, v in oci_database_backup_cancel_management.database_backup_cancel_managements : k => v.cancel_backup_trigger if v.cancel_backup_trigger != null }
}

