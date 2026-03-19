pipeline {

    agent {
        label "ww"
    }

    tools {
        maven 'apache-maven-3.9.14'  
    }

    stages {

        stage ("cleaning local repository") {
            steps { 
                sh "sudo rm -rf /root/.m2/repository"			  
            }
        } 
	 
        stage ("build process") {
            steps { 
                sh "mvn -version"  
                sh "sudo mvn clean install"			  
            }
        } 
	 
        stage ("cleanig tomcat workspace") {
            steps {
                sh "sudo rm -rf /mnt/servers/apache-tomcat-10.1.52/webapps/LoginWebApp*"
            }	  
        }
			
        stage ("deploy war file into tomcat workspace"){
            steps {
                sh "sudo target/LoginWebApp.war /mnt/servers/apache-tomcat-10.1.52/webapps/"
            }
        }
    }
}
