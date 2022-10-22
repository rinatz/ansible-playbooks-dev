# ansible-playbooks-dev

[![license](https://img.shields.io/badge/LICENSE-MIT-blue.svg)](LICENSE)

This repository stores Ansible playbooks for provisioning local development environment.

## Requirements

- [Ansible]

## Supported OS

- Amazon Linux 2
- Ubuntu 22.04

## Usage

Clone this repository.

```shell
$ git clone https://github.com/rinatz/playbooks
```

Move `playbooks` directory and run below command.

```shell
$ ansible-playbook -i HOST,... site.yml [-t TAG,...]

Options:
  -i HOST       Hostnames with comma separated to be provisioned (A comma is required even if there is only one hostname)
  -t TAG        Role names with comma separated (If not passed this option, all roles are executed)
```

[Ansible]: https://docs.ansible.com/ansible/latest/index.html
