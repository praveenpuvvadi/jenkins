# Jenkins

## Installation

1. Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads).
(Note: Make sure that CPU virtualization is enabled in your BIOS.)

2. Install [Vagrant](https://www.vagrantup.com/downloads.html).

3. Download the scripts Vagrantfile and Bootstrap.sh from the following GitHub repository: [https://github.com/jdizikes/jenkins](https://github.com/jdizikes/jenkins).

4. Open a terminal in the directory where the scripts are saved.

5. Execute the command "vagrant up".
The scripts will create a virtual machine (VM) running Ubuntu 16.04, install Jenkins and its dependencies, and start Jenkins.

6. Save the admin password generated after Jenkins starts.
It will appear in your shell session between lines of asterisks.

## Configuration

1. Open a browser and connect to your Jenkins VM at the address [http://localhost:8080](http://localhost:8080).

2. Unlock Jenkins using the admin password.

3. On the "Customize Jenkins" page, choose the option to install the suggested plugins.

4. On the "Create First Admin User" page, click the "Continue as admin" button.
(In the future you can log in using the username "admin" and the admin password.)

5. To create a project, click "New Item" from the list of options at the top left of the main page.

6. On the next page, enter a name for the project, click the "Freestyle project" button, and then click "OK" at the bottom left of the page.

7. Under the "General" tab, check the "GitHub project" box and then enter the URL of a GitHub repository you want to use with Jenkins.

8. Under the "Source Code Management" tab, click the "Git" radio button and enter the same URL from step 7 in the "Repository URL" field.

9. The "Build Triggers" tab contains options to automatically trigger Jenkins.
These options will be configured after we have Jenkins running on an external server with a static IP address.
For now, ignore them.

10. The "Build" tab is where steps of the Jenkins pipeline (e.g., build and test) are configured.
This is where we're currently stuck.
We need to configure a build using Ant, Maven, or Gradle.

## Notes

- If you halt and restart your Jenkins VM, Jenkins may not restart automatically.
If this occurs, Jenkins can be restarted manually from a Vagrant SSH session using the following command: "java -jar /usr/share/jenkins/jenkins.war --httpPort=9090".
To prevent this from happening, suspend (rather than halt) the VM when you are done with it.
