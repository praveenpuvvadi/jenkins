# For information on installing Jenkins, see https://jenkins.io/doc/book/installing/

# Add key for the Jenkins Debian package repository to system.
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -

# Add entry to /etc/apt/sources.list.
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

sudo apt-get update

# Install OpenJDK 8 runtime.
sudo apt-get install -y openjdk-8-jre

# Install Jenkins.
sudo apt-get install -y jenkins
