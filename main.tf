data "databricks_feature_engineering_materialized_features" "feature_engineering_materialized_features_lookup" {
  for_each = var.feature_engineering_materialized_features_lookup

  feature_name    = each.value.feature_name
  page_size       = each.value.page_size
  provider_config = each.value.provider_config
}

