variable "apigee_envgroup_attachments" {
  description = <<EOT
Map of apigee_envgroup_attachments, attributes below
Required:
    - envgroup_id
    - environment
Optional:
    - deletion_policy
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    envgroup_id     = string
    environment     = string
    deletion_policy = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
}

