# CI/CD Pipeline Optimization (Real Infrastructure Issue Fix)

This project demonstrates how a slow and unstable Jenkins CI/CD pipeline was optimized by fixing:

- Heavy Docker images (1GB → 120MB)
- Slow pip installs
- Multiple sleep delays in Jenkinsfile
- Jenkins workspace disk-full issue
- Missing Docker cache
- Slow container startup

---

## 🔥 What Was the REAL Problem?

- Jenkins EC2 (t2.micro) was hanging
- Builds were taking 60–70 seconds
- Docker image was >1GB due to python:3.9 base
- Pipeline contained multiple sleep() delays
- Pip install was slow
- Jenkins disk filled frequently

---

## 🛠 My Fixes

- Changed image to python:3.9-slim
- Removed unnecessary sleep delays
- Enabled Docker caching
- Automated Jenkins workspace cleanup
- Refactored Jenkinsfile for performance
- Final pipeline time: **70s → 15s**

---

## 📁 Folder Structure

ci-cd-performance-fix/
├── Dockerfile
├── app.py
├── requirements.txt
└── Jenkinsfile

---

## 🚀 Commands

### Build Docker image
docker build -t optimized-app .

### Run container
docker run -d -p 8000:8000 optimized-app

### Jenkins cleanup
bash cleanup.sh
