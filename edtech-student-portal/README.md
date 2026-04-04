# Student Learning Portal - Infotech Softnet

A complete DevOps project for **Infotech Softnet Computer Education** — Student Learning Portal.

## Project Overview

Built a production-ready **Student Learning Portal** where students can view courses, assignments, and announcements. The entire infrastructure and deployment pipeline is automated using modern DevOps practices.

**Live Demo:** Deployed on Kubernetes (Minikube) with AWS infrastructure.

---

## Tech Stack

- **Frontend & Backend**: Python Flask
- **Containerization**: Docker
- **CI/CD**: Jenkins Pipeline
- **Infrastructure as Code**: Terraform (AWS)
- **Orchestration**: Kubernetes (Deployment + Service)
- **Version Control**: Git

---

## Architecture

- **AWS Infrastructure** (Terraform):
  - VPC, Public Subnets, Internet Gateway
  - Route Table, Security Group (ports 22, 5000 open)
- **Application**: Containerized Flask app
- **Deployment**: Kubernetes Deployment (2 replicas) + LoadBalancer Service

---

## Project Structure

```bash
edtech-student-portal/
├── app/
│   ├── app.py                 # Student Portal UI
│   ├── requirements.txt
│   └── Dockerfile
├── k8s/
│   ├── deployment.yaml        # Kubernetes Deployment
│   └── service.yaml           # LoadBalancer Service
├── terraform/
│   ├── main.tf                # AWS Infrastructure
│   └── output.tf
├── Jenkinsfile                # CI/CD Pipeline
└── README.md
