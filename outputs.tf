output "vmware_clusters_id" {
  description = "Map of id values across all vmware_clusters, keyed the same as var.vmware_clusters"
  value       = { for k, v in azurerm_vmware_cluster.vmware_clusters : k => v.id }
}
output "vmware_clusters_cluster_node_count" {
  description = "Map of cluster_node_count values across all vmware_clusters, keyed the same as var.vmware_clusters"
  value       = { for k, v in azurerm_vmware_cluster.vmware_clusters : k => v.cluster_node_count }
}
output "vmware_clusters_cluster_number" {
  description = "Map of cluster_number values across all vmware_clusters, keyed the same as var.vmware_clusters"
  value       = { for k, v in azurerm_vmware_cluster.vmware_clusters : k => v.cluster_number }
}
output "vmware_clusters_hosts" {
  description = "Map of hosts values across all vmware_clusters, keyed the same as var.vmware_clusters"
  value       = { for k, v in azurerm_vmware_cluster.vmware_clusters : k => v.hosts }
}
output "vmware_clusters_name" {
  description = "Map of name values across all vmware_clusters, keyed the same as var.vmware_clusters"
  value       = { for k, v in azurerm_vmware_cluster.vmware_clusters : k => v.name }
}
output "vmware_clusters_sku_name" {
  description = "Map of sku_name values across all vmware_clusters, keyed the same as var.vmware_clusters"
  value       = { for k, v in azurerm_vmware_cluster.vmware_clusters : k => v.sku_name }
}
output "vmware_clusters_vmware_cloud_id" {
  description = "Map of vmware_cloud_id values across all vmware_clusters, keyed the same as var.vmware_clusters"
  value       = { for k, v in azurerm_vmware_cluster.vmware_clusters : k => v.vmware_cloud_id }
}

