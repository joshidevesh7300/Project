from flask import Flask

# 1. Application Definition
# The Flask application object is defined here.
app = Flask(__name__)

@app.route("/")
def home():
    # This remains the same, focusing only on application logic.
    return "CI/CD Pipeline Optimization Demo Running!"

# 2. Execution Block Removed (The Key Optimization)
# The 'if __name__ == "__main__":' block that called app.run() is removed.
# Rationale:
# * It uses the slow development server (Werkzeug).
# * In production, Gunicorn (or another WSGI server) is responsible for loading and running the 'app' object.
# * By removing it, we prevent developers from accidentally deploying the development server.
