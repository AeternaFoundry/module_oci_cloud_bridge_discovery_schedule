resource "oci_cloud_bridge_discovery_schedule" "cloud_bridge_discovery_schedules" {
  for_each = var.cloud_bridge_discovery_schedules

  compartment_id        = each.value.compartment_id
  execution_recurrences = each.value.execution_recurrences
  defined_tags          = each.value.defined_tags
  display_name          = each.value.display_name
  freeform_tags         = each.value.freeform_tags

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

