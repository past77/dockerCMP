FROM centos

MAINTAINER pavlo_polozhevets

RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat
RUN curl -LO http://apache.ip-connect.vn.ua/tomcat/tomcat-9/v9.0.31/bin/apache-tomcat-9.0.31.tar.gz
RUN tar -xf apache*.tar.gz
RUN mv apache-tomcat-9.0.31/* /opt/tomcat/.
RUN yum -y install java
RUN java -version

WORKDIR /opt/tomcat
COPY target/helloSpring.war /opt/tomcat/webapps


EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]
