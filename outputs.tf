output "codepipeline_custom_action_types_id" {
  description = "Map of id values across all codepipeline_custom_action_types, keyed the same as var.codepipeline_custom_action_types"
  value       = { for k, v in aws_codepipeline_custom_action_type.codepipeline_custom_action_types : k => v.id if v.id != null && length(v.id) > 0 }
}
output "codepipeline_custom_action_types_arn" {
  description = "Map of arn values across all codepipeline_custom_action_types, keyed the same as var.codepipeline_custom_action_types"
  value       = { for k, v in aws_codepipeline_custom_action_type.codepipeline_custom_action_types : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "codepipeline_custom_action_types_category" {
  description = "Map of category values across all codepipeline_custom_action_types, keyed the same as var.codepipeline_custom_action_types"
  value       = { for k, v in aws_codepipeline_custom_action_type.codepipeline_custom_action_types : k => v.category if v.category != null && length(v.category) > 0 }
}
output "codepipeline_custom_action_types_configuration_property" {
  description = "Map of configuration_property values across all codepipeline_custom_action_types, keyed the same as var.codepipeline_custom_action_types"
  value       = { for k, v in aws_codepipeline_custom_action_type.codepipeline_custom_action_types : k => v.configuration_property if v.configuration_property != null && length(v.configuration_property) > 0 }
}
output "codepipeline_custom_action_types_input_artifact_details" {
  description = "Map of input_artifact_details values across all codepipeline_custom_action_types, keyed the same as var.codepipeline_custom_action_types"
  value       = { for k, v in aws_codepipeline_custom_action_type.codepipeline_custom_action_types : k => one(v.input_artifact_details) if v.input_artifact_details != null && length(v.input_artifact_details) > 0 }
}
output "codepipeline_custom_action_types_output_artifact_details" {
  description = "Map of output_artifact_details values across all codepipeline_custom_action_types, keyed the same as var.codepipeline_custom_action_types"
  value       = { for k, v in aws_codepipeline_custom_action_type.codepipeline_custom_action_types : k => one(v.output_artifact_details) if v.output_artifact_details != null && length(v.output_artifact_details) > 0 }
}
output "codepipeline_custom_action_types_owner" {
  description = "Map of owner values across all codepipeline_custom_action_types, keyed the same as var.codepipeline_custom_action_types"
  value       = { for k, v in aws_codepipeline_custom_action_type.codepipeline_custom_action_types : k => v.owner if v.owner != null && length(v.owner) > 0 }
}
output "codepipeline_custom_action_types_provider_name" {
  description = "Map of provider_name values across all codepipeline_custom_action_types, keyed the same as var.codepipeline_custom_action_types"
  value       = { for k, v in aws_codepipeline_custom_action_type.codepipeline_custom_action_types : k => v.provider_name if v.provider_name != null && length(v.provider_name) > 0 }
}
output "codepipeline_custom_action_types_region" {
  description = "Map of region values across all codepipeline_custom_action_types, keyed the same as var.codepipeline_custom_action_types"
  value       = { for k, v in aws_codepipeline_custom_action_type.codepipeline_custom_action_types : k => v.region if v.region != null && length(v.region) > 0 }
}
output "codepipeline_custom_action_types_settings" {
  description = "Map of settings values across all codepipeline_custom_action_types, keyed the same as var.codepipeline_custom_action_types"
  value       = { for k, v in aws_codepipeline_custom_action_type.codepipeline_custom_action_types : k => one(v.settings) if v.settings != null && length(v.settings) > 0 }
}
output "codepipeline_custom_action_types_tags" {
  description = "Map of tags values across all codepipeline_custom_action_types, keyed the same as var.codepipeline_custom_action_types"
  value       = { for k, v in aws_codepipeline_custom_action_type.codepipeline_custom_action_types : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "codepipeline_custom_action_types_tags_all" {
  description = "Map of tags_all values across all codepipeline_custom_action_types, keyed the same as var.codepipeline_custom_action_types"
  value       = { for k, v in aws_codepipeline_custom_action_type.codepipeline_custom_action_types : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "codepipeline_custom_action_types_version" {
  description = "Map of version values across all codepipeline_custom_action_types, keyed the same as var.codepipeline_custom_action_types"
  value       = { for k, v in aws_codepipeline_custom_action_type.codepipeline_custom_action_types : k => v.version if v.version != null && length(v.version) > 0 }
}

