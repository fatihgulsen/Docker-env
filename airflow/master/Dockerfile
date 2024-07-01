FROM bitnami/airflow:2.9.2

USER root

RUN apt-get clean && apt-get update && apt-get install -y curl wget vim nano

RUN apt-get update && apt-get install -y \
    software-properties-common
RUN apt-get update && apt-get install -y default-jdk && apt-get clean
RUN mkdir -p /usr/share/man/man1 \
    mkdir -p /opt/bitnami/spark/jars

RUN curl https://packages.microsoft.com/keys/microsoft.asc | tee /etc/apt/trusted.gpg.d/microsoft.asc 
RUN curl https://packages.microsoft.com/config/debian/11/prod.list | tee /etc/apt/sources.list.d/mssql-release.list 
RUN apt-get update 
RUN ACCEPT_EULA=Y apt-get install -y msodbcsql18 
RUN echo 'export PATH="$PATH:/opt/mssql-tools18/bin"' >> ~/.bashrc 
RUN source ~/.bashrc

RUN curl -o hadoop-aws-3.3.4.jar https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/3.3.4/hadoop-aws-3.3.4.jar && \
    curl -o aws-java-sdk-bundle-1.12.604.jar https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-bundle/1.12.604/aws-java-sdk-bundle-1.12.604.jar&& \
    curl -o postgresql-42.3.5.jar https://jdbc.postgresql.org/download/postgresql-42.2.14.jar && \
    curl -o mssql-jdbc-12.4.2.jre11.jar https://repo1.maven.org/maven2/com/microsoft/sqlserver/mssql-jdbc/12.4.2.jre11/mssql-jdbc-12.4.2.jre11.jar && \
    curl -o delta-core_2.12-2.4.0.jar https://repo1.maven.org/maven2/io/delta/delta-core_2.12/2.4.0/delta-core_2.12-2.4.0.jar && \
    mv aws-java-sdk-bundle-1.12.604.jar hadoop-aws-3.3.4.jar postgresql-42.3.5.jar mssql-jdbc-12.4.2.jre11.jar delta-core_2.12-2.4.0.jar /opt/bitnami/spark/jars/ && \
    apt-get clean
COPY ./jars/ /opt/bitnami/spark/jars/
    
USER 1001