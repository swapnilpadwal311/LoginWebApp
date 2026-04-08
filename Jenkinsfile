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
                    sh'''
                    playbook: 'playbook.yml',
                    inventory: 'hosts',
                    credentialsId: 'my-ssh-key',
                    disableHostKeyChecking: true 
                    '''
                )
            }
        }
    }
