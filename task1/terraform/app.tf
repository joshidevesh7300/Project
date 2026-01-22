resource "kubernetes_config_map" "configuraton" {
  metadata {
    name = "app-config"
  }
    data = {
        GREETING = "Hello from Devops Interview"
  # as tols in the task fille to reflect the message
}

}
# imge do not need rebuild for config chage 

 resource "kubernetes_deployment" "expressapp" {
    metadata {
        name = "expres-app"

   
 }
 spec {
        replicas = 3
        selector {
            match_labels = {
                app = "expres-app"
            }
        }
template {
            metadata {
                labels = {
                    app = "expres-app"
                }
            }
            spec {
                    container {
                    name = "expres-app"
                    image = "nodehealth-app:1.0"
                    image_pull_policy = "IfNotPresent"
                    port {
                        container_port = 8080
                    }
                    env_from {
                        config_map_ref {
                            name = kubernetes_config_map.configuraton.metadata[0].name
                            #inject configuration into the continer 
                            # all keys of configamp becpme env var
                        }
                    }
                    }
             }
        }  
       }
}
# used the same image we build local in dockefile in minikube
resource "kubernetes_service" "expressservice" {

 wait_for_load_balancer = false 

    metadata {
        name = "expres-service"
    }
    spec {
        selector = {
            app = "expres-app"
        }
        port {
            port = 80
            target_port = 8080
        }
        type = "LoadBalancer"
    }
    
}


