#!/usr/bin/sh

export ANSIBLE_LOCALHOST_WARNING=False

rpm -q --quiet ansible || sudo dnf install -y ansible
ansible-playbook --ask-become-pass localhost.yml
