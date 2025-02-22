# odm-tomcat

## Summary
This repository contains a simple Tomcat v9.0.84 server that you can install in your own linux environment with a simple script.

## Prerequisites
You must have a java 17 installed. The script will ask for th location.

## Steps
### 1. Run the script 
Navigate to the directory where you want to install the Tomcat server and run the script
./install_tomcat_odm.sh

You can copy onto your machine or create a file with 

vi ./install_tomcat_odm.sh

### 2. Move Decision Center and Decsion Server Archives
The repo does not have the .war files. You must add them to the /odm-tomcat/apache-tomcat-9.0.84/webapps directoy
   
### 3. (Optional) Configure the databases
The server is configured to use the same h2 database with the sample projects avaialble.

If you wish to configure a different database you can find example configuration in the server.xml

_**odm-tomcat/apache-tomcat-9.0.84/conf/server.xml**_

### 4. Start the server with the **startup** command
```
/odm-tomcat/apache-tomcat-9.0.84/startup.sh
```
### 6. Access ODM with the links below
http://<host>:9090/decisioncenter
http://<host>:9090/res
