variable "database_backup_cancel_managements" {
  description = <<EOT
Map of database_backup_cancel_managements, attributes below
Required:
    - backup_id
Optional:
    - cancel_backup_trigger
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    backup_id             = string
    cancel_backup_trigger = optional(number)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

