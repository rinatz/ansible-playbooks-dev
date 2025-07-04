# ansible-playbooks

[![license](https://img.shields.io/badge/LICENSE-MIT-blue.svg)](LICENSE)

This repository stores Ansible playbooks for provisioning local development environment.

## Requirements

- [Ansible](https://docs.ansible.com/ansible/latest/index.html)

## Supported OS

- Amazon Linux 2
- Ubuntu 22.04

## Usage

Clone this repository.

```shell
$ git clone https://github.com/rinatz/ansible-playbooks
```

Move `ansible-playbooks` directory and run below command.

```shell
$ ansible-playbook -i localhost, -c local site.yml
```
