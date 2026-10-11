variable "feature_engineering_materialized_features_lookup" {
  description = <<EOT
Map of feature_engineering_materialized_features_lookup, attributes below
Optional:
    - feature_name
    - page_size
    - provider_config
EOT

  type = map(object({
    feature_name = optional(string)
    page_size    = optional(number)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

