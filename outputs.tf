output "vmware_clusters" {
  description = "All vmware_cluster resources"
  value       = azurerm_vmware_cluster.vmware_clusters
}
output "vmware_clusters_cluster_node_count" {
  description = "List of cluster_node_count values across all vmware_clusters"
  value       = [for k, v in azurerm_vmware_cluster.vmware_clusters : v.cluster_node_count]
}
output "vmware_clusters_cluster_number" {
  description = "List of cluster_number values across all vmware_clusters"
  value       = [for k, v in azurerm_vmware_cluster.vmware_clusters : v.cluster_number]
}
output "vmware_clusters_hosts" {
  description = "List of hosts values across all vmware_clusters"
  value       = [for k, v in azurerm_vmware_cluster.vmware_clusters : v.hosts]
}
output "vmware_clusters_name" {
  description = "List of name values across all vmware_clusters"
  value       = [for k, v in azurerm_vmware_cluster.vmware_clusters : v.name]
}
output "vmware_clusters_sku_name" {
  description = "List of sku_name values across all vmware_clusters"
  value       = [for k, v in azurerm_vmware_cluster.vmware_clusters : v.sku_name]
}
output "vmware_clusters_vmware_cloud_id" {
  description = "List of vmware_cloud_id values across all vmware_clusters"
  value       = [for k, v in azurerm_vmware_cluster.vmware_clusters : v.vmware_cloud_id]
}

