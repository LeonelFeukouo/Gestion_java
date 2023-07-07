FROM tomcat:9.0

COPY ./target/Gestion.war /usr/local/tomcat/webapps/ROOT.war
