FROM docker.io/library/tomcat:7-jre7

#RUN curl http://download.forgerock.org/downloads/openam/openam_link.js | grep -o "http://.*\.war" | xargs curl -o /usr/local/tomcat/webapps/openam-org.war
RUN wget http://download.forgerock.org/downloads/openam/OpenAM-14.0.0-SNAPSHOT_20160405.war 
RUN mv OpenAM-14.0.0-SNAPSHOT_20160405.war /usr/local/tomcat/webapps/openam-org.war


EXPOSE  8080 389 4444 50389 5444 1689
CMD ["catalina.sh","run"]
