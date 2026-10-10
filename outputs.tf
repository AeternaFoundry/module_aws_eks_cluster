output "eks_clusters_id" {
  description = "Map of id values across all eks_clusters, keyed the same as var.eks_clusters"
  value       = { for k, v in aws_eks_cluster.eks_clusters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "eks_clusters_access_config" {
  description = "Map of access_config values across all eks_clusters, keyed the same as var.eks_clusters"
  value       = { for k, v in aws_eks_cluster.eks_clusters : k => one(v.access_config) if v.access_config != null && length(v.access_config) > 0 }
}
output "eks_clusters_arn" {
  description = "Map of arn values across all eks_clusters, keyed the same as var.eks_clusters"
  value       = { for k, v in aws_eks_cluster.eks_clusters : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "eks_clusters_bootstrap_self_managed_addons" {
  description = "Map of bootstrap_self_managed_addons values across all eks_clusters, keyed the same as var.eks_clusters"
  value       = { for k, v in aws_eks_cluster.eks_clusters : k => v.bootstrap_self_managed_addons if v.bootstrap_self_managed_addons != null }
}
output "eks_clusters_certificate_authority" {
  description = "Map of certificate_authority values across all eks_clusters, keyed the same as var.eks_clusters"
  value       = { for k, v in aws_eks_cluster.eks_clusters : k => v.certificate_authority if v.certificate_authority != null && length(v.certificate_authority) > 0 }
}
output "eks_clusters_cluster_id" {
  description = "Map of cluster_id values across all eks_clusters, keyed the same as var.eks_clusters"
  value       = { for k, v in aws_eks_cluster.eks_clusters : k => v.cluster_id if v.cluster_id != null && length(v.cluster_id) > 0 }
}
output "eks_clusters_compute_config" {
  description = "Map of compute_config values across all eks_clusters, keyed the same as var.eks_clusters"
  value       = { for k, v in aws_eks_cluster.eks_clusters : k => one(v.compute_config) if v.compute_config != null && length(v.compute_config) > 0 }
}
output "eks_clusters_control_plane_scaling_config" {
  description = "Map of control_plane_scaling_config values across all eks_clusters, keyed the same as var.eks_clusters"
  value       = { for k, v in aws_eks_cluster.eks_clusters : k => one(v.control_plane_scaling_config) if v.control_plane_scaling_config != null && length(v.control_plane_scaling_config) > 0 }
}
output "eks_clusters_created_at" {
  description = "Map of created_at values across all eks_clusters, keyed the same as var.eks_clusters"
  value       = { for k, v in aws_eks_cluster.eks_clusters : k => v.created_at if v.created_at != null && length(v.created_at) > 0 }
}
output "eks_clusters_deletion_protection" {
  description = "Map of deletion_protection values across all eks_clusters, keyed the same as var.eks_clusters"
  value       = { for k, v in aws_eks_cluster.eks_clusters : k => v.deletion_protection if v.deletion_protection != null }
}
output "eks_clusters_enabled_cluster_log_types" {
  description = "Map of enabled_cluster_log_types values across all eks_clusters, keyed the same as var.eks_clusters"
  value       = { for k, v in aws_eks_cluster.eks_clusters : k => v.enabled_cluster_log_types if v.enabled_cluster_log_types != null && length(v.enabled_cluster_log_types) > 0 }
}
output "eks_clusters_encryption_config" {
  description = "Map of encryption_config values across all eks_clusters, keyed the same as var.eks_clusters"
  value       = { for k, v in aws_eks_cluster.eks_clusters : k => one(v.encryption_config) if v.encryption_config != null && length(v.encryption_config) > 0 }
}
output "eks_clusters_endpoint" {
  description = "Map of endpoint values across all eks_clusters, keyed the same as var.eks_clusters"
  value       = { for k, v in aws_eks_cluster.eks_clusters : k => v.endpoint if v.endpoint != null && length(v.endpoint) > 0 }
}
output "eks_clusters_force_update_version" {
  description = "Map of force_update_version values across all eks_clusters, keyed the same as var.eks_clusters"
  value       = { for k, v in aws_eks_cluster.eks_clusters : k => v.force_update_version if v.force_update_version != null }
}
output "eks_clusters_identity" {
  description = "Map of identity values across all eks_clusters, keyed the same as var.eks_clusters"
  value       = { for k, v in aws_eks_cluster.eks_clusters : k => v.identity if v.identity != null && length(v.identity) > 0 }
}
output "eks_clusters_kubernetes_network_config" {
  description = "Map of kubernetes_network_config values across all eks_clusters, keyed the same as var.eks_clusters"
  value       = { for k, v in aws_eks_cluster.eks_clusters : k => one(v.kubernetes_network_config) if v.kubernetes_network_config != null && length(v.kubernetes_network_config) > 0 }
}
output "eks_clusters_name" {
  description = "Map of name values across all eks_clusters, keyed the same as var.eks_clusters"
  value       = { for k, v in aws_eks_cluster.eks_clusters : k => v.name if v.name != null && length(v.name) > 0 }
}
output "eks_clusters_outpost_config" {
  description = "Map of outpost_config values across all eks_clusters, keyed the same as var.eks_clusters"
  value       = { for k, v in aws_eks_cluster.eks_clusters : k => one(v.outpost_config) if v.outpost_config != null && length(v.outpost_config) > 0 }
}
output "eks_clusters_platform_version" {
  description = "Map of platform_version values across all eks_clusters, keyed the same as var.eks_clusters"
  value       = { for k, v in aws_eks_cluster.eks_clusters : k => v.platform_version if v.platform_version != null && length(v.platform_version) > 0 }
}
output "eks_clusters_region" {
  description = "Map of region values across all eks_clusters, keyed the same as var.eks_clusters"
  value       = { for k, v in aws_eks_cluster.eks_clusters : k => v.region if v.region != null && length(v.region) > 0 }
}
output "eks_clusters_remote_network_config" {
  description = "Map of remote_network_config values across all eks_clusters, keyed the same as var.eks_clusters"
  value       = { for k, v in aws_eks_cluster.eks_clusters : k => one(v.remote_network_config) if v.remote_network_config != null && length(v.remote_network_config) > 0 }
}
output "eks_clusters_role_arn" {
  description = "Map of role_arn values across all eks_clusters, keyed the same as var.eks_clusters"
  value       = { for k, v in aws_eks_cluster.eks_clusters : k => v.role_arn if v.role_arn != null && length(v.role_arn) > 0 }
}
output "eks_clusters_status" {
  description = "Map of status values across all eks_clusters, keyed the same as var.eks_clusters"
  value       = { for k, v in aws_eks_cluster.eks_clusters : k => v.status if v.status != null && length(v.status) > 0 }
}
output "eks_clusters_storage_config" {
  description = "Map of storage_config values across all eks_clusters, keyed the same as var.eks_clusters"
  value       = { for k, v in aws_eks_cluster.eks_clusters : k => one(v.storage_config) if v.storage_config != null && length(v.storage_config) > 0 }
}
output "eks_clusters_tags" {
  description = "Map of tags values across all eks_clusters, keyed the same as var.eks_clusters"
  value       = { for k, v in aws_eks_cluster.eks_clusters : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "eks_clusters_tags_all" {
  description = "Map of tags_all values across all eks_clusters, keyed the same as var.eks_clusters"
  value       = { for k, v in aws_eks_cluster.eks_clusters : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "eks_clusters_upgrade_policy" {
  description = "Map of upgrade_policy values across all eks_clusters, keyed the same as var.eks_clusters"
  value       = { for k, v in aws_eks_cluster.eks_clusters : k => one(v.upgrade_policy) if v.upgrade_policy != null && length(v.upgrade_policy) > 0 }
}
output "eks_clusters_version" {
  description = "Map of version values across all eks_clusters, keyed the same as var.eks_clusters"
  value       = { for k, v in aws_eks_cluster.eks_clusters : k => v.version if v.version != null && length(v.version) > 0 }
}
output "eks_clusters_vpc_config" {
  description = "Map of vpc_config values across all eks_clusters, keyed the same as var.eks_clusters"
  value       = { for k, v in aws_eks_cluster.eks_clusters : k => one(v.vpc_config) if v.vpc_config != null && length(v.vpc_config) > 0 }
}
output "eks_clusters_zonal_shift_config" {
  description = "Map of zonal_shift_config values across all eks_clusters, keyed the same as var.eks_clusters"
  value       = { for k, v in aws_eks_cluster.eks_clusters : k => one(v.zonal_shift_config) if v.zonal_shift_config != null && length(v.zonal_shift_config) > 0 }
}

