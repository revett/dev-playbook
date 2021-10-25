install-galaxy-dependencies:
	ansible-galaxy install --force --role-file requirements.yml

run:
	ansible-playbook -i localhost, playbook.yml --ask-become-pass

update-galaxy-dependencies: install-galaxy-dependencies
