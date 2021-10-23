# dev-playbook

[Ansible](https://github.com/ansible/ansible) playbook for macOS setup and
configuration.

## Install

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/revett/dev-playbook/HEAD/install.sh)"
```

## Usage

```
ansible-playbook -i localhost, playbook.yml --ask-become-pass
```

## Thanks

- Jeff Geerling - [geerlingguy/mac-dev-playbook](https://github.com/geerlingguy/mac-dev-playbook)
- Marko Wallin - [walokra/osx-dev-playbook](https://github.com/walokra/osx-dev-playbook)
