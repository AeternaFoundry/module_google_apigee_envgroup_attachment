output "apigee_envgroup_attachments_id" {
  description = "Map of id values across all apigee_envgroup_attachments, keyed the same as var.apigee_envgroup_attachments except keys with no id are omitted"
  value       = { for k, v in google_apigee_envgroup_attachment.apigee_envgroup_attachments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "apigee_envgroup_attachments_deletion_policy" {
  description = "Map of deletion_policy values across all apigee_envgroup_attachments, keyed the same as var.apigee_envgroup_attachments except keys with no deletion_policy are omitted"
  value       = { for k, v in google_apigee_envgroup_attachment.apigee_envgroup_attachments : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "apigee_envgroup_attachments_envgroup_id" {
  description = "Map of envgroup_id values across all apigee_envgroup_attachments, keyed the same as var.apigee_envgroup_attachments except keys with no envgroup_id are omitted"
  value       = { for k, v in google_apigee_envgroup_attachment.apigee_envgroup_attachments : k => v.envgroup_id if v.envgroup_id != null && length(v.envgroup_id) > 0 }
}
output "apigee_envgroup_attachments_environment" {
  description = "Map of environment values across all apigee_envgroup_attachments, keyed the same as var.apigee_envgroup_attachments except keys with no environment are omitted"
  value       = { for k, v in google_apigee_envgroup_attachment.apigee_envgroup_attachments : k => v.environment if v.environment != null && length(v.environment) > 0 }
}
output "apigee_envgroup_attachments_name" {
  description = "Map of name values across all apigee_envgroup_attachments, keyed the same as var.apigee_envgroup_attachments except keys with no name are omitted"
  value       = { for k, v in google_apigee_envgroup_attachment.apigee_envgroup_attachments : k => v.name if v.name != null && length(v.name) > 0 }
}

