pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                docker build --tag violin .
            }
        }
        stage('Test') {
            steps {
                go test
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}