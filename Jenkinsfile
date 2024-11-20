pipeline {
    agent any
    environment {
        AWS_REGION = "us-east-1"
    }
    stages {
        stage('Initialize') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Plan') {
            steps {
                sh 'terraform plan'
            }
        }
        stage('Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }
    post {
        always {
            archiveArtifacts artifacts: '**/*.tfstate', fingerprint: true
        }
    }
}
