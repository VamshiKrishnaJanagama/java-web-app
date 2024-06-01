pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/VamshiKrishnaJanagama/java-web-app.git'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("java-web-app:${env.BUILD_ID}")
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    dockerImage.run('-p 8080:8080')
                }
            }
        }
    }
}
