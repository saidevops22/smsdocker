FROM centos

MAINTAINER Ravindra thanishinfotech.com ravindra.devops@gmail.com

RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat
RUN curl -O https://www.apache.org/dist/tomcat/tomcat-8/v8.5.47/bin/apache-tomcat-8.5.47.tar.gz.asc
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-8.5.47/* /opt/tomcat/.
RUN yum -y install java
RUN java -version

WORKDIR /opt/tomcat/webapps
RUN curl -O -L https://github.com/ThanishInfotech/Docker1/raw/master/dist/samplewebApp.war

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh","run"]
