# jenkins
COMMANDS:

#VAGRANT 

vagrant add ubuntu/trusty64: add vagrant box ubuntu 14.04 LTS
vagrant init :for initalizing vagrant file
vagrant up : to start vm
vagrant ssh : to connect
**********************************************************************************************
#JAVA

java - to check if java is installed
java -version:
javac -version: 
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer

optional commands:
sudo apt-get install oracle-java8-set-default : set java8 as default
sudo apt-get install --no-install-recommends oracle-java8-installer:  donot set java8 as default

****************************************************************************************************
#JENKINS:

by default runs on port 8080

requires basic web server to run:
NGINX web server installation command:
sudo apt-get install nginx: To install nginx
service nginx status : to get the status of webserver
********************************************************************
wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install jenkins

upgrade:
sudo apt-get update
sudo apt-get install jenkins
**************************************************************************************************************
latest version:
This is the Debian package repository of Jenkins to automate installation and upgrade. To use this repository, first add the key to your system:

wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
Then add the following entry in your /etc/apt/sources.list:
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list'
Update your local package index, then finally install Jenkins:

sudo apt-get update
sudo apt-get install jenkins

********************************************************
If you installed using apt-get in ubuntu 14.04, you will found the default password in /var/lib/jenkins/secrets/initialAdminPassword location username: admin 
or 
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
********************************************************************************
Jenkins will be launched as a daemon up on start. Check /etc/init.d/jenkins for more details. To run this service a ‘jenkins’ user is created. The log file will be placed in /var/log/jenkins/jenkins.log . Check this file when in need for troubleshooting.

By default, Jenkins listens on port 8080.

After the installation is complete you can access Jenkins by navigating your favorite browser to: http://your_domain:8080 or http://your_server_IP_address:8080
*************************************************************************************************************************************************************
add gui to ubuntu 14.04
sudo apt-get install gnome : 1.9 gb GUI
reboot: restart ubuntu
-or-
sudo apt-get install ubuntu-desktop : traditional ubuntu GUI
reboot : restart 
