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

1. Change user profile picture to 🦑
1. Configure iCloud settings (see below)
1. Install [Logitech Options](https://www.google.com/search?q=download+logitech+options+macos)
1. Initialise SSH key
1. Initialise AWS credentials and profiles
1. Configure [iTerm2](https://iterm2.com/) to use `SauceCodePro Nerd Font Mono`
1. Enable battery percentage in menu bar
1. Disable Spotlight icon in menu bar
1. Change Focus to always display in menu bar
1. Change Sound to always display in menu bar
1. Disable tags in Finder sidebar
1. Enable `revett` in Finder sidebar
1. Disable `Airdrop`, `Documents` and `Recents` in Finder sidebar
1. Show all filename extensions in Finder
1. Install [VPN (IKEv2/IPSec)](https://support.nordvpn.com/Connectivity/macOS/1133051642/How-to-connect-to-NordVPN-with-IKEv2-IPSec-on-macOS.htm)
1. Set `CTRL` to `CAPS_LOCK`
1. Disable `Look up & data detectors` for trackpad
1. Enable `Tap to click` for trackpad
1. Configure `Light` click for trackpad
1. Disable `Scroll direction: Natural` for trackpad

### iCloud Settings

- Disable all services
- Enable `iCloud Drive`
- Enable `Find My Mac`

## Thanks

- Elliot Weiser - [elliotweiser.osx-command-line-tools](https://github.com/elliotweiser/ansible-osx-command-line-tools)
- Jeff Geerling - [geerlingguy/mac-dev-playbook](https://github.com/geerlingguy/mac-dev-playbook)
- Jeff Geerling - [geerlingguy.mac.homebrew](https://github.com/geerlingguy/ansible-collection-mac)
- Marko Wallin - [walokra/osx-dev-playbook](https://github.com/walokra/osx-dev-playbook)
