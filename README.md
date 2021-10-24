# dev-playbook

[Ansible](https://github.com/ansible/ansible) playbook for macOS setup and
configuration.

## Install

Downloads and executes [`install.sh`](./install.sh) locally, which installs the
required dependencies for the playbook:

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/revett/dev-playbook/HEAD/install.sh)"
```

## Usage

Runs the [Ansible](https://github.com/ansible/ansible) playbook:

```
ansible-playbook -i localhost, playbook.yml --ask-become-pass
```

## Thanks

- Jeff Geerling - [geerlingguy/mac-dev-playbook](https://github.com/geerlingguy/mac-dev-playbook)
- Marko Wallin - [walokra/osx-dev-playbook](https://github.com/walokra/osx-dev-playbook)
