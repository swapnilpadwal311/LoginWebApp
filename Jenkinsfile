pipeline {

          agent {
		          label "built-in"
			    }
stages {

       stage ("cleaning mvn local repository") {
	        steps { 
	          sh "rm -rf /root/.m2/repository"			  
	      }
	    } 
	 
	   stage ("cleanig tomcat workspace") {
	       steps {
		       sh "rm -rf /mnt/servers/apache-tomcat-10.1.52/webapps/LoginWebApp*"
                }	  
	        }
			
			
	   stage ("deploy war file into ec2 tomcat workspace"){
          steps {
		       sh "scp target/LoginWebApp.war root@172.31.39.71: /mnt/servers/apache-tomcat-10.1.52/webapps/"
			   }

            }

          }

	   }   
