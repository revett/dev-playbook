# dev-playbook

[Ansible](https://github.com/ansible/ansible) playbook for macOS setup and
configuration.

## Install

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/revett/dev-playbook/HEAD/install.sh)"
```

## Usage

```
ANSIBLE_LOCALHOST_WARNING=false ansible-playbook playbook.yml --ask-become-pass
```

## Thanks

- Jeff Geerling -
  [geerlingguy/mac-dev-playbook](https://github.com/geerlingguy/mac-dev-playbook)
