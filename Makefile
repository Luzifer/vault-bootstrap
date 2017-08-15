execute: roles
	ansible-playbook -i hosts setup.yml

roles:
	ansible-galaxy install -r galaxy.yml
