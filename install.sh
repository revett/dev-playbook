#! /usr/bin/env bash
#
# Install script for repo
#
# Before being able to run the Ansible playbook within this repo on a fresh
# machine, a number of dependencies must be installed.
#
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/revett/dev-playbook/HEAD/install.sh)"
#
# @author Charlie Revett

print() {
  echo -e "\e[1m> $1\e[0m"
}

# Install Homebrew
COMMAND="brew"
print "checking: $COMMAND"
if ! command -v $COMMAND &> /dev/null; then
  print "not found, installing"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  brew update
else
  print "found, skipping"
fi

# Install Ansible
COMMAND="ansible"
print "checking: $COMMAND"
if ! command -v $COMMAND &> /dev/null; then
  print "not found, installing"
  brew install ansible
else
  print "found, skipping"
fi

# Install elliotweiser.osx-command-line-tools
# https://galaxy.ansible.com/elliotweiser/osx-command-line-tools
ROLE="elliotweiser.osx-command-line-tools"
print "checking: $ROLE"
ansible-galaxy role list | grep "$ROLE" &> /dev/null
if [ $? != 0 ]; then
  print "not found, installing"
  ansible-galaxy role install --force $ROLE
else
  print "found, skipping"
fi

# Install geerlingguy.mac
# https://galaxy.ansible.com/geerlingguy/mac
COLLECTION="geerlingguy.mac"
print "checking: $COLLECTION"
ansible-galaxy collection list | grep "$COLLECTION" &> /dev/null
if [ $? != 0 ]; then
  print "not found, installing"
  ansible-galaxy collection install --force $COLLECTION
else
  print "found, skipping"
fi

# Install Git
COMMAND="git"
print "checking: $COMMAND"
if ! command -v $COMMAND &> /dev/null; then
  print "not found, installing"
  brew install git
else
  print "found, skipping"
fi

# Create personal projects directory
PARENT_PATH="$HOME/projects/github.com/revett"
print "checking: $PARENT_PATH"
if [ ! -d $PARENT_PATH ]; then
  print "not found, creating directory"
  mkdir -p $PARENT_PATH
else
  print "found, skipping"
fi

# Clone this repo
REPO_PATH="${PARENT_PATH}/dev-playbook"
print "checking: $REPO_PATH"
if [ ! -d $REPO_PATH ]; then
  print "not found, cloning repo"
  git -C $PARENT_PATH clone https://github.com/revett/dev-playbook.git
else
  print "found, skipping"
fi

print "complete."
