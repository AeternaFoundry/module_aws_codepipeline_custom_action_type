resource "aws_codepipeline_custom_action_type" "codepipeline_custom_action_types" {
  for_each = var.codepipeline_custom_action_types

  category      = each.value.category
  provider_name = each.value.provider_name
  version       = each.value.version
  region        = each.value.region
  tags          = each.value.tags
  tags_all      = each.value.tags_all

  input_artifact_details {
    maximum_count = each.value.input_artifact_details.maximum_count
    minimum_count = each.value.input_artifact_details.minimum_count
  }

  output_artifact_details {
    maximum_count = each.value.output_artifact_details.maximum_count
    minimum_count = each.value.output_artifact_details.minimum_count
  }

  dynamic "configuration_property" {
    for_each = each.value.configuration_property != null ? each.value.configuration_property : []
    content {
      description = configuration_property.value.description
      key         = configuration_property.value.key
      name        = configuration_property.value.name
      queryable   = configuration_property.value.queryable
      required    = configuration_property.value.required
      secret      = configuration_property.value.secret
      type        = configuration_property.value.type
    }
  }

  dynamic "settings" {
    for_each = each.value.settings != null ? [each.value.settings] : []
    content {
      entity_url_template           = settings.value.entity_url_template
      execution_url_template        = settings.value.execution_url_template
      revision_url_template         = settings.value.revision_url_template
      third_party_configuration_url = settings.value.third_party_configuration_url
    }
  }
}

