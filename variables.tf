variable "vmware_clusters" {
  description = <<EOT
Map of vmware_clusters, attributes below
Required:
    - cluster_node_count
    - name
    - sku_name
    - vmware_cloud_id
EOT

  type = map(object({
    cluster_node_count = number
    name               = string
    sku_name           = string
    vmware_cloud_id    = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.vmware_clusters : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.vmware_clusters : (
        v.cluster_node_count >= 3 && v.cluster_node_count <= 16
      )
    ])
    error_message = "must be between 3 and 16"
  }
  validation {
    condition = alltrue([
      for k, v in var.vmware_clusters : (
        contains(["av20", "av36", "av36t", "av36p", "av36pt", "av48", "av48t", "av52", "av52t", "av64"], v.sku_name)
      )
    ])
    error_message = "must be one of: av20, av36, av36t, av36p, av36pt, av48, av48t, av52, av52t, av64"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

