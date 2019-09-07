FROM centos:7

COPY roles site.yml develop.yml playbooks/

# Install Ansible
RUN yum install -y epel-release \
    && yum install -y ansible \
    #
    # Run Ansible
    && ansible-playbook -i localhost, -c local playbooks/site.yml --skip-tags=docker \
    && rm -rf playbooks \
    #
    # Clean up
    && yum clean all \
    && rm -rf /var/cache/yum/*
