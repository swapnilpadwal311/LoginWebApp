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
                // This replaces the 'sh' command and handles credentials securely
                ansiblePlaybook(
                    playbook: 'playbook.yml',
                    inventory: 'hosts',
                    credentialsId: 'my-ssh-key',
                    disableHostKeyChecking: true
                )
            }
        }
    }
}
