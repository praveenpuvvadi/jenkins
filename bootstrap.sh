# For information on installing Jenkins, see https://jenkins.io/doc/book/installing/

# Add PPA with Oracle Java.
sudo add-apt-repository -y ppa:webupd8team/java

# Add key for the Jenkins Debian package repository to system.
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -

# Add entry to /etc/apt/sources.list.
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

# Update the package list.
sudo apt-get -y update

# Automatically accept the Oracle Java 8 license.
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections

# Install Oracle JDK 8.
sudo apt-get install -y oracle-java8-installer

# Install Jenkins.
sudo apt-get install -y jenkins

# Run Jenkins on port 9090. (8080 will cause an error.)
java -jar /usr/share/jenkins/jenkins.war --httpPort=9090

# To configure the PPA on your machine and install ansible run these commands
sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get install -y ansible
