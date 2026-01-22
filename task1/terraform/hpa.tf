resource "kubernetes_horizontal_pod_autoscaler_v2" "express_hpa" {
  metadata {
    name = "express-hpa"
  }

  spec {
    min_replicas = 3
    max_replicas = 6

    scale_target_ref {
      api_version = "apps/v1"
      kind        = "Deployment"
      name        = kubernetes_deployment.expressapp.metadata[0].name
    }

    metric {
      type = "Resource"
      resource {
        name = "cpu"
        target {
          type               = "Utilization"
          average_utilization = 70
        }
      }
    }
  }
}

