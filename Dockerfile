FROM tomcat:8

copy target/*.war /usr/colal/tomcat/webapps/main.war
