pipeline {

    agent {
        label "built-in"
    }

    tools {
        maven 'apache-maven-3.9.14'  
    }

    stages {

        stage ("cleaning local repository") {
            steps { 
                sh "rm -rf /root/.m2/repository"			  
            }
        } 
	 
        stage ("build process") {
            steps { 
                sh "mvn -version"  
                sh "mvn clean install"			  
            }
        } 
	 
        stage ("cleanig tomcat workspace") {
            steps {
                sh "rm -rf /mnt/servers/apache-tomcat-10.1.52/webapps/LoginWebApp*"
            }	  
        }
			
        stage ("deploy war file into tomcat workspace"){
            steps {
                sh "scp -o stricthostkeychecking=no target/LoginWebApp.war root@172.31.32.52: /mnt/servers/apache-tomcat-10.1.52/webapps/"
            }
        }
    }
}
