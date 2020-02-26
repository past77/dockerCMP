FROM centos

MAINTAINER pavlo_polozhevets

RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat
RUN curl -LO https://downloads.apache.org/tomcat/tomcat-8/v8.5.51/bin/apache-tomcat-8.5.51.tar.gz
RUN tar -xf apache*.tar.gz
RUN mv apache-tomcat-8.5.51/* /opt/tomcat/.
RUN yum -y install java
RUN java -version

WORKDIR /opt/tomcat
COPY target/helloSpring.war /opt/tomcat/webapps


EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]
