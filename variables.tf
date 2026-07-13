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
  # --- Unconfirmed validation candidates, derived from azurerm_vmware_cluster's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: vmware_cloud_id
  #   source:    [from validate.PrivateCloudID] !ok
  # path: vmware_cloud_id
  #   source:    [from validate.PrivateCloudID] err != nil
  # path: cluster_node_count
  #   condition: value >= 3 && value <= 16
  #   message:   must be between 3 and 16
  # path: sku_name
  #   condition: contains(["av20", "av36", "av36t", "av36p", "av36pt", "av48", "av48t", "av52", "av52t", "av64"], value)
  #   message:   must be one of: av20, av36, av36t, av36p, av36pt, av48, av48t, av52, av52t, av64
}

