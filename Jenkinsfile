pipeline {
    agent { label 'built-in' }

    stages {
        stage('Checkout Code') {
            steps {
                git 'https://github.com/swapnilpadwal311/LoginWebApp.git'
            }
        }
        stage('Build WAR') {
            
            steps {
                sh '''
                    mvn clean install
                '''
            }
        }
       stage('start docker-compose') {
        steps{
            sh'''
            docker compose up -d
            '''
           }
        }
    }
}

