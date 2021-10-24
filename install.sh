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

# Install Homebrew
COMMAND="brew"
echo "> checking: $COMMAND"
if ! command -v $COMMAND &> /dev/null; then
  echo "> not found, installing"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  brew update
else
  echo "> found, skipping"
fi

# Install Ansible
COMMAND="ansible"
echo "> checking: $COMMAND"
if ! command -v $COMMAND &> /dev/null; then
  echo "> not found, installing"
  brew install ansible
else
  echo "> found, skipping"
fi

# Install elliotweiser.osx-command-line-tools
# https://galaxy.ansible.com/elliotweiser/osx-command-line-tools
ROLE="elliotweiser.osx-command-line-tools"
echo "> checking: $ROLE"
ansible-galaxy role list | grep "$ROLE" &> /dev/null
if [ $? != 0 ]; then
  echo "> not found, installing"
  ansible-galaxy role install $ROLE
else
  echo "> found, skipping"
fi

# Install geerlingguy.mac
# https://galaxy.ansible.com/geerlingguy/mac
COLLECTION="geerlingguy.mac"
echo "> checking: $COLLECTION"
ansible-galaxy collection list | grep "$COLLECTION" &> /dev/null
if [ $? != 0 ]; then
  echo "> not found, installing"
  ansible-galaxy collection install $COLLECTION
else
  echo "> found, skipping"
fi

# Install Git
COMMAND="git"
echo "> checking: $COMMAND"
if ! command -v $COMMAND &> /dev/null; then
  echo "> not found, installing"
  brew install git
else
  echo "> found, skipping"
fi

# Create personal projects directory
PARENT_PATH="$HOME/projects/github.com/revett"
echo "> checking: $PARENT_PATH"
if [ ! -d $PARENT_PATH ]; then
  echo "> not found, creating directory"
  mkdir -p $PARENT_PATH
else
  echo "> found, skipping"
fi

# Clone this repo
REPO_PATH="${PARENT_PATH}/dev-playbook"
echo "> checking: $REPO_PATH"
if [ ! -d $REPO_PATH ]; then
  echo "> not found, cloning repo"
  git -C $PARENT_PATH clone https://github.com/revett/dev-playbook.git
else
  echo "> found, skipping"
fi

echo "> complete."
