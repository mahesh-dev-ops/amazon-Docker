FROM tomcat:8
RUN apt update && apt -y install \
net-tools \
zip \
tar \
tree \
unzip
COPY target/amazon.war /usr/local/tomcat/webapps
CMD ["catalina.sh","run"]
