DEFAULT: run

install-galaxy-dependencies:
	@echo "> debug: install/update ansible galaxy dependencies"
	ansible-galaxy install --force --role-file requirements.yml

ifdef TAGS
TAGS_FLAG=--tags $(TAGS)
endif
run: update-galaxy-dependencies
	echo "> debug: run ansible playbook"
	ansible-playbook -i localhost, playbook.yml --ask-become-pass $(TAGS_FLAG)

update-galaxy-dependencies: install-galaxy-dependencies
