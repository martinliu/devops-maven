FROM tomcat:8.5.92
MAINTAINER "Martin Liu <martin@devopscoach.org>"
ADD webapp/target/webapp.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]
