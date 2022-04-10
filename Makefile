.PHONY: install
install:
	./install-ansible.sh

%:
	ansible-playbook -i localhost, -c local site.yml --tags=$*
