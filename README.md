# odm-tomcat

## Summary
This repository contains a simple Tomcat v9.0.84 server that you can install in your own linux or windows environment with a simple script.

## Prerequisites
You must have a Java 17 installed. The script will ask for its location.
For Windows, you must have powershell.

## Steps
### 1. Run the Script 
Navigate to the directory where you want to install the Tomcat server and run the script install_tomcat_odm.sh.
```
./install_tomcat_odm.sh
```
For Windows, run the install_tomcat_odm.ps1 script using powershell.
```
install_tomcat_odm.ps1
```

### 2. Move Decision Center and Decsion Server Archives
The repo does not contain the .war files. You must add them to the /odm-tomcat/apache-tomcat-9.0.84/webapps directory.
   
### 3. (Optional) Configure the Databases
The server is configured to use the sample h2 database with the sample projects avaialble. The database uses the JRULES v9 schema and must be used with ODM v9.

If you wish to configure a different database you can find example configurations in the server.xml.

_**odm-tomcat/apache-tomcat-9.0.84/conf/server.xml**_

### 4. Start the Server with the **startup** Command
Linux:
```
/odm-tomcat/apache-tomcat-9.0.84/bin/startup.sh
```
Windows:
```
/odm-tomcat/apache-tomcat-9.0.84/bin/startup.bat
```

### 6. Access ODM with the Links Below
http://\<hostname\>:9090/decisioncenter

http://\<hostname\>:9090/res
