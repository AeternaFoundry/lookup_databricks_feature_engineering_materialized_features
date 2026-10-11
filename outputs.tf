output "feature_engineering_materialized_features_lookup_feature_name" {
  description = "Map of feature_name values across all feature_engineering_materialized_features_lookup, keyed the same as var.feature_engineering_materialized_features_lookup except keys with no feature_name are omitted"
  value       = { for k, v in data.databricks_feature_engineering_materialized_features.feature_engineering_materialized_features_lookup : k => v.feature_name if v.feature_name != null && length(v.feature_name) > 0 }
}
output "feature_engineering_materialized_features_lookup_materialized_features" {
  description = "Map of materialized_features values across all feature_engineering_materialized_features_lookup, keyed the same as var.feature_engineering_materialized_features_lookup except keys with no materialized_features are omitted"
  value       = { for k, v in data.databricks_feature_engineering_materialized_features.feature_engineering_materialized_features_lookup : k => v.materialized_features if v.materialized_features != null && length(v.materialized_features) > 0 }
}
output "feature_engineering_materialized_features_lookup_page_size" {
  description = "Map of page_size values across all feature_engineering_materialized_features_lookup, keyed the same as var.feature_engineering_materialized_features_lookup except keys with no page_size are omitted"
  value       = { for k, v in data.databricks_feature_engineering_materialized_features.feature_engineering_materialized_features_lookup : k => v.page_size if v.page_size != null }
}
output "feature_engineering_materialized_features_lookup_provider_config" {
  description = "Map of provider_config values across all feature_engineering_materialized_features_lookup, keyed the same as var.feature_engineering_materialized_features_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_feature_engineering_materialized_features.feature_engineering_materialized_features_lookup : k => v.provider_config if v.provider_config != null && length(v.provider_config) > 0 }
}

