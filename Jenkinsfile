pipeline {
          agent any
		  
		 stages {
		        stage ("clear local repository of mvn")  {
                      steps {
					        sh "rm -rf /root/.m2/repository"
						}
                    }
					
				stage ("mvn clean install")  {
                      steps {
					        sh "mvn clean install"
						}
                    }
					
                stage ("remove .war file from tomcat deployment folder") {
                      steps {
                           sh "rm -rf /mnt/servers/apache-tomcat-10.1.52/webapps/LoginWebApp*"
                            }
                        }
                stage ("create s3 bucket") {
                      steps {
                            sh "aws s3 mb s3://sssssss-222-111"
							}
						}
				stage ("enable static website hosting") {
                      steps {
                            sh "aws s3 website s3://sssssss-222-111 \
                            --index-document index.html \
                            --error-document error.html"
							}
						}		
				stage ("copy .war to s3 bucket") {
                      steps {
                            sh "aws s3 cp target/LoginWebApp.war s3://sssssss-222-111"
							}
						}
				stage ("Deploy war file into tomcat server") {
                      steps {
                            sh "aws s3 cp s3://sssssss-222-111/LoginWebApp.war /mnt/servers/apache-tomcat-10.1.52/webapps/ "
							}
						}
				   }

                }
		}
