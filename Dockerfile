FROM tomact:latest
ADD **./jar /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]

