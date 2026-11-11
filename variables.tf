variable "eks_clusters" {
  description = <<EOT
Map of eks_clusters, attributes below
Required:
    - name
    - role_arn
    - vpc_config (block):
        - control_plane_egress_mode (optional)
        - endpoint_private_access (optional)
        - endpoint_public_access (optional)
        - public_access_cidrs (optional)
        - security_group_ids (optional)
        - subnet_ids (required)
Optional:
    - bootstrap_self_managed_addons
    - deletion_protection
    - enabled_cluster_log_types
    - force_update_version
    - region
    - tags
    - tags_all
    - version
    - access_config (block):
        - authentication_mode (optional)
        - bootstrap_cluster_creator_admin_permissions (optional)
    - compute_config (block):
        - enabled (optional)
        - node_pools (optional)
        - node_role_arn (optional)
    - control_plane_scaling_config (block):
        - tier (optional)
    - encryption_config (block):
        - provider (required, block):
            - key_arn (required)
        - resources (required)
    - kube_api_server_config (block):
        - event_ttl (optional)
        - service_node_port_range (optional, block):
            - max_port (optional)
            - min_port (optional)
    - kube_controller_manager_config (block):
        - horizontal_pod_autoscaler_controller_config (optional, block):
            - horizontal_pod_autoscaler_sync_period (optional)
    - kube_scheduler_config (block):
        - node_resources_fit (optional, block):
            - scoring_strategy (optional, block):
                - resource (optional, block):
                    - name (optional)
                    - weight (optional)
                - type (optional)
    - kubernetes_network_config (block):
        - elastic_load_balancing (optional, block):
            - enabled (optional)
        - ip_family (optional)
        - service_ipv4_cidr (optional)
    - outpost_config (block):
        - control_plane_instance_type (required)
        - control_plane_placement (optional, block):
            - group_name (optional)
            - spread_level (optional)
        - etcd_instance_type (optional)
        - etcd_placement (optional, block):
            - spread_level (optional)
        - outpost_arns (required)
    - remote_network_config (block):
        - remote_node_networks (optional, block):
            - cidrs (optional)
        - remote_pod_networks (optional, block):
            - cidrs (optional)
    - storage_config (block):
        - block_storage (optional, block):
            - enabled (optional)
    - upgrade_policy (block):
        - support_type (optional)
    - zonal_shift_config (block):
        - enabled (optional)
EOT

  type = map(object({
    name                          = string
    role_arn                      = string
    bootstrap_self_managed_addons = optional(bool)
    deletion_protection           = optional(bool)
    enabled_cluster_log_types     = optional(set(string))
    force_update_version          = optional(bool)
    region                        = optional(string)
    tags                          = optional(map(string))
    tags_all                      = optional(map(string))
    version                       = optional(string)
    vpc_config = object({
      control_plane_egress_mode = optional(string)
      endpoint_private_access   = optional(bool)
      endpoint_public_access    = optional(bool)
      public_access_cidrs       = optional(set(string))
      security_group_ids        = optional(set(string))
      subnet_ids                = set(string)
    })
    access_config = optional(object({
      authentication_mode                         = optional(string)
      bootstrap_cluster_creator_admin_permissions = optional(bool)
    }))
    compute_config = optional(object({
      enabled       = optional(bool)
      node_pools    = optional(set(string))
      node_role_arn = optional(string)
    }))
    control_plane_scaling_config = optional(object({
      tier = optional(string)
    }))
    encryption_config = optional(object({
      provider = object({
        key_arn = string
      })
      resources = set(string)
    }))
    kube_api_server_config = optional(object({
      event_ttl = optional(string)
      service_node_port_range = optional(object({
        max_port = optional(number)
        min_port = optional(number)
      }))
    }))
    kube_controller_manager_config = optional(object({
      horizontal_pod_autoscaler_controller_config = optional(object({
        horizontal_pod_autoscaler_sync_period = optional(string)
      }))
    }))
    kube_scheduler_config = optional(object({
      node_resources_fit = optional(object({
        scoring_strategy = optional(object({
          resource = optional(list(object({
            name   = optional(string)
            weight = optional(number)
          })))
          type = optional(string)
        }))
      }))
    }))
    kubernetes_network_config = optional(object({
      elastic_load_balancing = optional(object({
        enabled = optional(bool)
      }))
      ip_family         = optional(string)
      service_ipv4_cidr = optional(string)
    }))
    outpost_config = optional(object({
      control_plane_instance_type = string
      control_plane_placement = optional(object({
        group_name   = optional(string)
        spread_level = optional(string)
      }))
      etcd_instance_type = optional(string)
      etcd_placement = optional(object({
        spread_level = optional(string)
      }))
      outpost_arns = set(string)
    }))
    remote_network_config = optional(object({
      remote_node_networks = optional(object({
        cidrs = optional(set(string))
      }))
      remote_pod_networks = optional(object({
        cidrs = optional(set(string))
      }))
    }))
    storage_config = optional(object({
      block_storage = optional(object({
        enabled = optional(bool)
      }))
    }))
    upgrade_policy = optional(object({
      support_type = optional(string)
    }))
    zonal_shift_config = optional(object({
      enabled = optional(bool)
    }))
  }))
  # Note: 19 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

