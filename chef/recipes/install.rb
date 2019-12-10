#
# Cookbook:: jenkinsServer
# Recipe:: install
#
# Copyright:: 2019, Keziah Zhou, All Rights Reserved.

execute 'Update yum' do
    command "yum update -y"
end

execute 'Install Jenkins and requirements' do
    command "<<-EOH
        yum update -y
        sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
        yum install jenkins -y
        yum install java-1.8.0 -y
        yum remove java-1.7.0-openjdk -y
        yum install git -y
    EOH"
end

execute 'Start Jenkins' do
    command "service jenkins start"
end

# Install Docker
execute 'Install Docker' do
    command "<<-EOH
        usermod -a -G docker jenkins
        service docker restart
        service jenkins start
    EOH"
end