FROM tomcat

COPY ./target/Gestion.war /usr/local/tomcat/webapps/ROOT.war
COPY ./target/Gestion /usr/local/tomcat/webapps/ROOT

