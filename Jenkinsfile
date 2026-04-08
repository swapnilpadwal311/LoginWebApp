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
                sshagent(['my-ssh-id']) {
                    sh '''
                    ansible-playbook -i hosts playbook.yml
                    '''
                }
            }
        }
    }
}
