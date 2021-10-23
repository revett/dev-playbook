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

COMMAND="brew"
echo "> checking: $COMMAND"
if ! command -v $COMMAND &> /dev/null; then
  echo "> not found, installing"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  brew update
else
  echo "> found, skipping"
fi

COMMAND="ansible"
echo "> checking: $COMMAND"
if ! command -v $COMMAND &> /dev/null; then
  echo "> not found, installing"
  brew install ansible
else
  echo "> found, skipping"
fi

COMMAND="git"
echo "> checking: $COMMAND"
if ! command -v $COMMAND &> /dev/null; then
  echo "> not found, installing"
  brew install git
else
  echo "> found, skipping"
fi

echo "> running: brew cleanup"
brew cleanup

echo "> running: brew autoremove"
brew autoremove
