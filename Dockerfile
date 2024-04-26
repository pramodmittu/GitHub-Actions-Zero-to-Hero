# Use CentOS as base image
FROM centos:latest

# Copy repository configuration file into the image
COPY artifactory.repo /etc/yum.repos.d/artifactory.repo

# Install required dependencies
RUN yum install -y python3-devel

# Set the working directory to where your source code is located
WORKDIR /opt/github/_work/src

# Copy the source code into the container
COPY . .

# Run commands to build your RPM
RUN rpmbuild -ba my-python-app.spec
