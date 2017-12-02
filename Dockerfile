FROM tomcat:8.0
MAINTAINER "Martin Liu <martin@devopscoach.org>"
ADD webapp/target/webapp.war /usr/local/tomcat/webapps/ ["catalina.sh", "run"]
