# odm-tomcat

## Summary
This repository contains a simple Tomcat v9.0.84 server that you can use in your own windows environment with just some simple changes. 

## Steps
### 1. Clone or download the repository onto your machine
```
git clone <repo URL>
```
### 2. Set JAVA_HOME and JRE_HOME in odm-tomcat/apache-tomcat-9.0.84/bin/catilina.bat to your JDK directory
```
set JAVA_HOME=C:\IBM\jdk\jdk
set JRE_HOME=C:\IBM\jdk\jdk
```
### 3. Copy Tomcat war files to odm-tomcat/apache-tomcat-9.0.84/webapps
   
### 4. Configure the databases
The database is configured in _**odm-tomcat/apache-tomcat-9.0.84/conf/server.xml**_

There is an example configuration for Postgres and H2. 

For a quick setup, you can start the sample server and then point to the databases that are created in the liberty _**data**_ directory

### 5. Start the server with the **startup** command
```
cd C:\IBM\tomcat\tomcat-test\odm-tomcat\apache-tomcat-9.0.84\bin
startup
```
### 6. Access ODM with the links below
http://localhost:9090/decisioncenter

http://localhost:9090/res
