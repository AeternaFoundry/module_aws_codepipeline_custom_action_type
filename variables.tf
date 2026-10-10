variable "codepipeline_custom_action_types" {
  description = <<EOT
Map of codepipeline_custom_action_types, attributes below
Required:
    - category
    - provider_name
    - version
    - input_artifact_details (block):
        - maximum_count (required)
        - minimum_count (required)
    - output_artifact_details (block):
        - maximum_count (required)
        - minimum_count (required)
Optional:
    - region
    - tags
    - tags_all
    - configuration_property (block):
        - description (optional)
        - key (required)
        - name (required)
        - queryable (optional)
        - required (required)
        - secret (required)
        - type (optional)
    - settings (block):
        - entity_url_template (optional)
        - execution_url_template (optional)
        - revision_url_template (optional)
        - third_party_configuration_url (optional)
EOT

  type = map(object({
    category      = string
    provider_name = string
    version       = string
    region        = optional(string)
    tags          = optional(map(string))
    tags_all      = optional(map(string))
    input_artifact_details = object({
      maximum_count = number
      minimum_count = number
    })
    output_artifact_details = object({
      maximum_count = number
      minimum_count = number
    })
    configuration_property = optional(list(object({
      description = optional(string)
      key         = bool
      name        = string
      queryable   = optional(bool)
      required    = bool
      secret      = bool
      type        = optional(string)
    })))
    settings = optional(object({
      entity_url_template           = optional(string)
      execution_url_template        = optional(string)
      revision_url_template         = optional(string)
      third_party_configuration_url = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.codepipeline_custom_action_types : (
        v.configuration_property == null || (length(v.configuration_property) <= 10)
      )
    ])
    error_message = "Each configuration_property list must contain at most 10 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.codepipeline_custom_action_types : (
        v.input_artifact_details.maximum_count >= 0 && v.input_artifact_details.maximum_count <= 5
      )
    ])
    error_message = "must be between 0 and 5"
  }
  validation {
    condition = alltrue([
      for k, v in var.codepipeline_custom_action_types : (
        v.input_artifact_details.minimum_count >= 0 && v.input_artifact_details.minimum_count <= 5
      )
    ])
    error_message = "must be between 0 and 5"
  }
  validation {
    condition = alltrue([
      for k, v in var.codepipeline_custom_action_types : (
        v.output_artifact_details.maximum_count >= 0 && v.output_artifact_details.maximum_count <= 5
      )
    ])
    error_message = "must be between 0 and 5"
  }
  validation {
    condition = alltrue([
      for k, v in var.codepipeline_custom_action_types : (
        v.output_artifact_details.minimum_count >= 0 && v.output_artifact_details.minimum_count <= 5
      )
    ])
    error_message = "must be between 0 and 5"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

