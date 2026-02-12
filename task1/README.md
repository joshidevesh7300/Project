 Microservices & Observability (Task 1)
Implementation of a scalable Node.js microservice on Minikube using Terraform.

1. Deployment 
Deployed a Node.js/Express app with 3 replicas.

Exposes a /health endpoint returning pod status in JSON.

Service type: Load Balancer on port 8080.

Uses a ConfigMap for application greetings.

2. Monitoring
Deployed Prometheus via Helm chart to scrape metrics from the /metrics endpoint.

Pre-configured Grafana dashboards to monitor CPU and memory usage for pods and nodes.

3. Autoscaling 
Configured Horizontal Pod Autoscaler (HPA).

Scales between 3 to 6 replicas based on CPU utilization >70%.
