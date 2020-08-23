FROM ubuntu:bionic

# Configure the PPA and install Ansible
RUN apt-get update && apt-get install -y software-properties-common && \
    apt-add-repository --yes --update ppa:ansible/ansible && \
    apt-get install -y ansible

# Delete all the apt list files to keep clean
RUN apt-get clean && rm -rf /var/lib/apt/lists/*