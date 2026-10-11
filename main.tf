resource "google_apigee_envgroup_attachment" "apigee_envgroup_attachments" {
  for_each = var.apigee_envgroup_attachments

  envgroup_id     = each.value.envgroup_id
  environment     = each.value.environment
  deletion_policy = each.value.deletion_policy

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

