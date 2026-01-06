pipeline {
    agent any

    stages {

        stage('Checkout Code') {
            steps {
                git 'https://github.com/joshidevesh7300/Project.git'
            }
        }

        stage('Destroy AWS Lab VM') {
            steps {
                input message: 'Are you sure you want to destroy the lab?'

                dir('devops-cloud-lab/terraform') {
                    sh 'terraform init'
                    sh 'terraform destroy -auto-approve'
                }
            }
        }
    }
}
