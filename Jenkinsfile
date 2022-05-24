pipeline {
    agent any
    tools {
        go '1.18.2'
    }
    stages {
        stage('Build') {
            steps {
                sh 'docker build --tag violin .'
                sh 'rm -f go.mod go.sum'
                sh 'go mod init violin && go mod tidy && go mod vendor'
            }
        }
        stage('Test') {
            steps {
                sh 'go test'

            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}