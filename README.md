# dev-playbook

[Ansible](https://github.com/ansible/ansible) playbook for macOS setup and
configuration.

## Install

Downloads and executes [`install.sh`](./install.sh) locally, which installs the
required dependencies for the playbook:

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/revett/dev-playbook/HEAD/install.sh)"
```

Install the [Ansible Galaxy](https://galaxy.ansible.com/) dependencies:

```
make install-galaxy-dependencies
```

## Usage

Runs the [Ansible](https://github.com/ansible/ansible) playbook:

```
make run
```

> **Note**: includes a step to update Ansible Galaxy dependencies.

## Thanks

- Elliot Weiser - [elliotweiser.osx-command-line-tools](https://github.com/elliotweiser/ansible-osx-command-line-tools)
- Jeff Geerling - [geerlingguy/mac-dev-playbook](https://github.com/geerlingguy/mac-dev-playbook)
- Jeff Geerling - [geerlingguy.mac](https://github.com/geerlingguy/ansible-collection-mac)
- Marko Wallin - [walokra/osx-dev-playbook](https://github.com/walokra/osx-dev-playbook)
