variable "cloud_bridge_discovery_schedules" {
  description = <<EOT
Map of cloud_bridge_discovery_schedules, attributes below
Required:
    - compartment_id
    - execution_recurrences
Optional:
    - defined_tags
    - display_name
    - freeform_tags
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id        = string
    execution_recurrences = string
    defined_tags          = optional(map(string))
    display_name          = optional(string)
    freeform_tags         = optional(map(string))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

