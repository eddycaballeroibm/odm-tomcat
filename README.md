# odm-tomcat

## Summary
This repository contains a simple Tomcat v9.0.84 server that you can install in your own linux environment with a simple script.

## Prerequisites
You must have a Java 17 installed. The script will ask for its location.

## Steps
### 1. Run the Script 
Navigate to the directory where you want to install the Tomcat server and run the script install_tomcat_odm.sh.
```
./install_tomcat_odm.sh
```

### 2. Move Decision Center and Decsion Server Archives
The repo does not have the .war files. You must add them to the /odm-tomcat/apache-tomcat-9.0.84/webapps directoy.
   
### 3. (Optional) Configure the Databases
The server is configured to use the sample h2 database with the sample projects avaialble.

If you wish to configure a different database you can find example configurations in the server.xml

_**odm-tomcat/apache-tomcat-9.0.84/conf/server.xml**_

### 4. Start the Server with the **startup** Command
```
/odm-tomcat/apache-tomcat-9.0.84/bin/startup.sh
```
### 6. Access ODM with the Links Below
http://<host>:9090/decisioncenter
http://<host>:9090/res
