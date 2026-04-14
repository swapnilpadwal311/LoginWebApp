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
        stage('Save Artifacts') {
            steps {
                archiveArtifacts artifacts: 'target/*.war', fingerprint: true
            }
        }
    
       stage('Setup DB') {
       steps {
         sh '''
         chmod -R 777 setup-db.sh
            ./setup-db.sh
        '''
           }
       }
    
      stage('Deploy to Slave') {
      steps {
        sh '''
            scp target/*.war root@172.31.32.152:/mnt/servers/apache-tomcat-10.1.54/webapps
        '''
         }
       }  
    }
}

