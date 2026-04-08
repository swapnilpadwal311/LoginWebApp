pipeline {
    agent any
    stages {
        stage('Checkout Code') {
            steps {
                git 'https://github.com/swapnilpadwal311/LoginWebApp.git'
            }
        }
      
        stage('Run Ansible Playbook') {
            steps {
                sh '''
                ansible-playbook playbook.yml 
                '''
            }
        }
    }
}
