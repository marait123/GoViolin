pipeline {
    agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('docker-hub')
	}

    tools {
        go '1.18.2'
    }
    stages {
        stage('Build') {
            steps {
                sh 'docker build --tag marait123/violin:latest .'
                sh 'rm -f go.mod go.sum'
                sh 'go mod init violin && go mod tidy && go mod vendor'
            }
        }
        stage('Test') {
            steps {
                sh 'go test'

            }
        }
        stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}
        stage('Push') {

			steps {
				sh 'docker push marait123/violin:latest'
			}
		}

        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
    post {
		always {
			sh 'docker logout'
		}
	}
}