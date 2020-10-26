FROM golang:1.15

RUN curl -f -L https://download.java.net/java/GA/jdk15.0.1/51f4f36ad4ef43e39d0dfdbaf6549e32/9/GPL/openjdk-15.0.1_linux-x64_bin.tar.gz  | tar -C /opt -xzv

ENV JAVA_HOME=/opt/jdk-15.0.1
ENV PATH=$JAVA_HOME/bin:$PATH

# RUN yum install -y java-$JDK_VERSION-openjdk-devel.i686 && \
#    yum clean all

# Maven
ENV MAVEN_VERSION 3.6.3
RUN curl -f -L https://repo1.maven.org/maven2/org/apache/maven/apache-maven/$MAVEN_VERSION/apache-maven-$MAVEN_VERSION-bin.tar.gz | tar -C /opt -xzv
ENV M2_HOME /opt/apache-maven-$MAVEN_VERSION
ENV maven.home $M2_HOME
ENV M2 $M2_HOME/bin
ENV PATH $M2:$PATH

# Set JDK to be 32bit
#COPY set_java $M2
#RUN $M2/set_java && rm $M2/set_java
