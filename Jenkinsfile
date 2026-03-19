pipeline {

          agent {
		          label "built-in"
			    }
stages {

       stage ("cleaning mvn local repository") {
	        step { 
	          sh "rm -rf /root/.m2/repository"			  
	      }
	    } 
	 
	   stage ("cleanig tomcat workspace") {
	       step {
		       sh "rm -rf /mnt/servers/apache-tomcat-10.1.52/webapps/LoginWebApp.war"
                }	  
	        }
			
			
	   stage ("deploy war file into ec2 tomcat workspace"){
          step {
		       sh "scp target/LoginWebApp.war root@172.31.39.71:/mnt/servers/apache-tomcat-10.1.52/webapps/"
			   }

            }

          }

	   }   
