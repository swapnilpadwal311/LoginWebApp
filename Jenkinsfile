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
			
        stage ("make s3 bucket"){
            steps {
                sh "aws s3 mb s3://swap-22-3-4-5"
            }
        }
		
		stage ("copy .war filt into s3 bucket"){
            steps {
                sh "aws s3 cp target/LoginWebApp.war s3://swap-22-3-4-5"
            }
        }
		
		stage ("copy .war file s3 bucket to slave machine"){
            steps {
                sh "scp s3://swap-22-3-4-5/LoginWebApp.war root@172.31.32.52:/mnt/servers/apache-tomcat-10.1.52/webapps/"
            }
        }
	
    }
}
