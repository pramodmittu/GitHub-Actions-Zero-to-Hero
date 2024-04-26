# Use CentOS as base image
FROM centos:latest

# Install required dependencies
RUN yum install -y python3-devel

# Set the working directory to where your source code is located
WORKDIR /opt/github/_work/src

# Copy the source code into the container
COPY . .

# Run commands to build your RPM
RUN rpmbuild -ba my-python-app.spec

# Copy repository configuration files to a temporary location
RUN mkdir /repo_configs
RUN cp /etc/yum.repos.d/*.repo /repo_configs
