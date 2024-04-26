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

# Optionally, you can copy the generated RPM files to a directory on your host machine
# Example:
# COPY /opt/github/_work/128t-utilities/128t-utilities/RPMS/* /path/to/host/rpm/directory
