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
        stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}
        stage('Push') {

			steps {
				sh 'docker push thetips4you/nodeapp_test:latest'
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