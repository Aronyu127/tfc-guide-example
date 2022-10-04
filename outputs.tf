################################################################################
# Cluster
################################################################################

output "cluster_arn" {
  description = "ARN that identifies the cluster"
  value       = module.admin-ecs.cluster_arn
}

output "cluster_id" {
  description = "ID that identifies the cluster"
  value       = module.admin-ecs.cluster_id
}

# output "cluster_name" {
#   description = "Name that identifies the cluster"
#   value       = module.admin-ecs.cluster_name
# }

################################################################################
# Cluster Capacity Providers
################################################################################

output "cluster_capacity_providers" {
  description = "Map of cluster capacity providers attributes"
  value       = module.admin-ecs.cluster_capacity_providers
}

################################################################################
# Capacity Provider
################################################################################

output "autoscaling_capacity_providers" {
  description = "Map of capacity providers created and their attributes"
  value       = module.admin-ecs.autoscaling_capacity_providers
}