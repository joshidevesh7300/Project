from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def hello():
    version = os.getenv('APP_VERSION', '1.0.0')
    return f"""
    <h1>Hello from Flask App!</h1>
    <h2>Version: {version}</h2>
    <p>Deployed using Git + Jenkins + Docker + Terraform + Kubernetes</p>
    """

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
