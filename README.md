# DevOps & Cloud Engineering Portfolio

This repository contains a comprehensive collection of DevOps projects, ranging from cloud cost optimization and CI/CD performance tuning to automated lab environments and microservices orchestration.

---

## 📑 Table of Contents

* [Featured: CI/CD Pipeline Optimization](https://www.google.com/search?q=%23-featured-cicd-pipeline-optimization)
* [Cloud Lab Automation](https://www.google.com/search?q=%23-cloud-lab-automation)
* [AWS Cost Optimization](https://www.google.com/search?q=%23-aws-cost-optimization)
* [Microservices & Observability (Task 1)](https://www.google.com/search?q=%23-microservices--observability-task-1)
* [Core DevOps Projects (Docker, K8s, Jenkins)](https://www.google.com/search?q=%23-core-devops-projects)
* [Python Automation Scripts](https://www.google.com/search?q=%23-python-automation-scripts)

---

## 🔥 Featured: CI/CD Pipeline Optimization

**Problem:** A slow, unstable Jenkins pipeline on a `t2.micro` instance was hanging and taking 70 seconds to build.

**The Fix:**

* **Image Reduction:** Transitioned from `python:3.9` to `python:3.9-slim`, dropping image size from 1GB to 120MB.
* **Performance Tuning:** Removed unnecessary `sleep()` delays and enabled Docker caching.
* **Resource Management:** Automated Jenkins workspace cleanup to prevent disk-full issues.
* **Result:** Reduced pipeline execution time from **70s to 15s**.

---

## ☁️ Cloud Lab Automation

Designed for EdTech platforms to provide consistent, cost-controlled learning environments.

* **Workflow:** A Jenkins pipeline builds a Docker-based DevOps lab image and triggers Terraform to provision AWS EC2 instances.
* **Tools:** AWS EC2, Terraform, Jenkins, Docker, and Git.

---

## 💰 AWS Cost Optimization

**Identifying Stale EBS Snapshots:**

* **Logic:** A Lambda function identifies EBS snapshots no longer associated with active (running or stopped) EC2 instances.
* **Outcome:** Automatically deletes stale snapshots to optimize AWS storage costs.

---

## ☸️ Microservices & Observability (Task 1)

Implementation of a scalable Node.js microservice on Minikube using Terraform.

### 1. Deployment (Part 1)

* Deployed a Node.js/Express app with **3 replicas**.
* Exposes a `/health` endpoint returning pod status in JSON.
* Service type: **Load Balancer** on port 8080.
* Uses a **ConfigMap** for application greetings.

### 2. Monitoring (Part 2)

* Deployed **Prometheus** via Helm chart to scrape metrics from the `/metrics` endpoint.
* Pre-configured **Grafana dashboards** to monitor CPU and memory usage for pods and nodes.

### 3. Autoscaling (Part 4)

* Configured **Horizontal Pod Autoscaler (HPA)**.
* Scales between **3 to 6 replicas** based on **CPU utilization >70%**.

---

## 🛠 Core DevOps Projects

### Jenkins CI/CD Pipeline

* Demonstrates a beginner-friendly pipeline that clones code from GitHub, builds, tests, and deploys using shell scripts.

### Docker Web App

* A containerized Python Flask application.
* **Quick Start:** `docker build -t docker-webapp . && docker run -p 5000:5000 docker-webapp`.

### Kubernetes Cluster App

* A standard deployment featuring 2 replicas and a NodePort service.

---

## 🐍 Python Automation Scripts

| Script | Description |
| --- | --- |
| `ping-checker.py` | Verifies if a specific website is reachable. |
| `file-organizer.py` | Automatically sorts files into folders based on their extensions. |

---

Would you like me to add a "Skills" section to this README that categorizes the tools you used (like Terraform, AWS, and Jenkins) across all these projects?
