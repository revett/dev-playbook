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
make run
```

> **Note**: includes a step to install/update
> [Ansible Galaxy](https://galaxy.ansible.com/) dependencies.

### Running a Subset of Tasks

Filter which tasks within the playbook are executed via tags:

```
make run TAGS="homebrew,hostname"
```

## Manual Steps

Unfortunately not everything can be automated, so the following checklist
should be followed after running the playbook:

1. Initialise SSH key
1. Initialise AWS credentials and profiles

## Thanks

- Elliot Weiser - [elliotweiser.osx-command-line-tools](https://github.com/elliotweiser/ansible-osx-command-line-tools)
- Jeff Geerling - [geerlingguy/mac-dev-playbook](https://github.com/geerlingguy/mac-dev-playbook)
- Jeff Geerling - [geerlingguy.mac.homebrew](https://github.com/geerlingguy/ansible-collection-mac)
- Marko Wallin - [walokra/osx-dev-playbook](https://github.com/walokra/osx-dev-playbook)
