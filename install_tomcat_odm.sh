# Assisted by watsonx Code Assistant 
# Code generated by WCA@IBM in this programming language is not approved for use in IBM product development.
#!/bin/bash

#Get java_home from user
read -p "Enter the JAVA_HOME location: " input

# Set the input to a variable javahome
javahome=$input

# Print the javahome variable
echo "JAVA_HOME is: $javahome"
echo
echo


#clone git repo
echo "Cloning odm-tomcat git repo https://github.com/eddycaballeroibm/odm-tomcat.git"
git clone https://github.com/eddycaballeroibm/odm-tomcat.git
echo
echo

#enter the repo
echo "Changing directory to the odm-tomcat repo"
cd odm-tomcat/apache-tomcat-9.0.84
#grant permissions to tomcat server scripts
chmod -R +x ./bin
echo
echo

#set the CATALINA_HOME env variable
catalinahome=$(pwd)
echo "The current directory is: $catalinahome"
echo "CATALINA_HOME will be set to: $catalinahome"
echo
echo


#set file name to catalina.sh
file_name="$catalinahome/bin/catalina.sh"

#Add CATALINA_HOME to catalina.sh
catalina_home_line_number=127
catalina_home_text="export CATALINA_HOME=$catalinahome"

sed -i "$catalina_home_line_number a $catalina_home_text" $file_name
echo "CATALINE_HOME added to catalina.sh successfully."

#add JAVA_HOME to catalina.sh
java_home_line_number=128
java_home_text="export JAVA_HOME=$javahome"
sed -i "$java_home_line_number a $java_home_text" $file_name
echo "JAVA_HOME added to catalina.sh successfully."


#add JRE_HOME to catalina.sh
jre_home_line_number=128
jre_home_text="export JRE_HOME=$javahome"
sed -i "$jre_home_line_number a $jre_home_text" $file_name

echo "JRE_HOME added to catalina.sh successfully."
echo
echo
echo
echo "Tomcat server installed successfully."
