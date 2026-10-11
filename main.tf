resource "oci_database_backup_cancel_management" "database_backup_cancel_managements" {
  for_each = var.database_backup_cancel_managements

  backup_id             = each.value.backup_id
  cancel_backup_trigger = each.value.cancel_backup_trigger

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

