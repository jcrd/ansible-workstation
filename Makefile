localhost: ansible
	ANSIBLE_LOCALHOST_WARNING=False ansible-playbook \
							  --ask-become-pass localhost.yml

ansible:
	rpm -q --quiet ansible || sudo dnf install -y ansible

.PHONY: localhost ansible
