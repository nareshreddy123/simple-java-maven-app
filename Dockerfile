FROM tomcat:latest
ADD  **/*.jar /usr/local/tomcat/webapps/
EXPOSE 8081
CMD ["catalina.sh", "run"]

