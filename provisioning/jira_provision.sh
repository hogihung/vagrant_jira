#toilet --gay Install-Java
#
## Install Java
#sudo apt-get -y install software-properties-common python-software-properties
#sudo apt-add-repository ppa:webupd8team/java
#sudo apt-get update
#echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections
#sudo apt-get -y install oracle-java8-installer
#
## Add JAVA_HOME to the environment
#sudo echo JAVA_HOME="/usr/lib/jvm/java-8-oracle/jre/bin/java" >> /etc/environment

# Download Jira
toilet --gay Install-Jira
sudo wget https://www.atlassian.com/software/jira/downloads/binary/atlassian-jira-software-7.2.1-x64.bin
sudo chmod a+x atlassian-jira-software-7.2.1-x64.bin

# Post install instructions:
echo "---------------------------------------------------"
echo "Connect to the new vm using:  vagrant ssh"
echo "Issue the following command to start the install of"
echo "the Jira Server software"
echo "sudo ./atlassian-jira-software-7.2.1-x64.bin"
echo ""
echo "Access Jira at: http://localhost:8080"
echo "---------------------------------------------------"
