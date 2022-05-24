pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'docker build --tag violin .'
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