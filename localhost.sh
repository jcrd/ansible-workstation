#!/usr/bin/sh

export ANSIBLE_LOCALHOST_WARNING=False

pip show ansible || pip install --user ansible
ansible-playbook --ask-become-pass localhost.yml
