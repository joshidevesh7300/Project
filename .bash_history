git init
git remote add origin https://github.com/joshidevesh7300/Project.git
git checkout -b edtech-student-portal
ls
cd edtech-student-portal/
mkdir app k8s terraform helm
ls
touch Jenkinsfile .gitignore README.md
ls
ls -a
cd app
ls
touch app.py requirements.txt Dockerfile
ls
cd ..
cd k8s
touch deployment.yaml service.yaml
ls
cd ..
cd terraform/
touch main.tf variable.tf output.tf
cd ..
mkdir -p helm/student-portal
ls
cd helm
ls
cd ..
tree
sudo app install tree
sudo apt install tree
cd ./
cd ../
sudo apt install tree
sudo apt updaye
sudo apt update
sudo apt install tree
ls
git add .
git commit -m "files & folder"
git push origin edtech-student-portal
tree
ls
cd edtech-student-portal/
ls
cd app
ls
vi Dockerfile 
cd ..
sudo apt remove $(dpkg --get-selections docker.io docker-compose docker-compose-v2 docker-doc podman-docker containerd runc | cut -f1)
sudo apt update
sudo apt install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
sudo tee /etc/apt/sources.list.d/docker.sources <<EOF
Types: deb
URIs: https://download.docker.com/linux/ubuntu
Suites: $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}")
Components: stable
Architectures: $(dpkg --print-architecture)
Signed-By: /etc/apt/keyrings/docker.asc
EOF

sudo apt update
sudo systemctl staus docker
sudo systemctl status docker
docker build -t student-portal:v1 -f app/Dockerfile ./app
pwd
ls
sudo usermod -aG docker ubuntu
pwd
docker build -t student-portal:v1 -f app/Dockerfile ./app
sudo docker build -t student-portal:v1 -f app/Dockerfile ./app
sudo docker ps
sudo docker list
docker list
sudo docker run -d -p 5000:5000 --name student-portal student-portal:v1
sudo docker ps
sudo ifconfig.me
ifconfig.me
ifconfig
sudo apt install net-tools
ifconfig.me
ifconfig
sudo ipconfig.me
curl ifconfig.me
ifconfig
ls
cd edtech-student-portal/
ls
cd app
ls
cat > app.py <<EOF
from flask import Flask, render_template_string
import os
from datetime import datetime

app = Flask(__name__)

@app.route('/')
def home():
    student_name = os.getenv('STUDENT_NAME', 'Dear Student')
    current_time = datetime.now().strftime("%d %B %Y, %I:%M %p")
    
    html = f"""
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Infotech Softnet - Student Portal</title>
        <style>
            body {{
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
                color: white;
                margin: 0;
                padding: 0;
                min-height: 100vh;
            }}
            .container {{
                max-width: 900px;
                margin: 40px auto;
                padding: 30px;
                background: rgba(255,255,255,0.1);
                border-radius: 15px;
                backdrop-filter: blur(10px);
                box-shadow: 0 8px 32px rgba(0,0,0,0.3);
            }}
            h1 {{ font-size: 2.8rem; margin-bottom: 10px; }}
            .welcome {{ font-size: 1.4rem; opacity: 0.95; }}
            .card {{
                background: rgba(255,255,255,0.15);
                padding: 20px;
                margin: 20px 0;
                border-radius: 10px;
            }}
            .footer {{
                text-align: center;
                margin-top: 40px;
                opacity: 0.8;
                font-size: 0.95rem;
            }}
        </style>
    </head>
    <body>
        <div class="container">
            <h1>🎓 Infotech Softnet</h1>
            <p class="welcome">Welcome back, <strong>{student_name}</strong>!</p>
            <p>Today is {current_time}</p>
            
            <div class="card">
                <h2>📚 My Courses</h2>
                <p>• Python Programming for Beginners<br>
                   • Web Development with Django<br>
                   • Cloud Computing & AWS Fundamentals<br>
                   • Data Structures & Algorithms</p>
            </div>

            <div class="card">
                <h2>📝 Today's Assignments</h2>
                <p>• Complete Module 3 Quiz - Python<br>
                   • Submit Assignment on VPC Design<br>
                   • Watch Lecture: Kubernetes Basics</p>
            </div>

            <div class="card">
                <h2>🚀 Quick Links</h2>
                <p>Learning Management System | Video Lectures | Discussion Forum | Progress Report</p>
            </div>

            <div class="footer">
                <p>Deployed using Git • Jenkins • Docker • Terraform • Kubernetes</p>
                <p>Version: 1.0 | Environment: Production | Infotech Softnet Student Portal</p>
            </div>
        </div>
    </body>
    </html>
    """
    return html

if __name__ == '__main__':
    port = int(os.environ.get('PORT', 5000))
    app.run(host='0.0.0.0', port=port, debug=False)
EOF

ls
cat app.py 
vi requirements.txt 
cat requirements.txt 
