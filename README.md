# playbooks

[![license](https://img.shields.io/badge/LICENSE-MIT-blue.svg)](LICENSE)

This is Ansible playbooks for development with VSCode.

## Getting started

```shell
$ git clone https://github.com/rinatz/playbooks
```

### For container based development

#### Requirements

- [Visual Studio Code]
- [Remote Development] (VSCode extension)
- [Docker]

### Provisoning

1. Run Visual Studio Code.
1. Open this repository cloned locally.
1. Select `Remote-Containers: Reopen in Container` from command parlette.

### For VM based development

#### Requirements

- [Visual Studio Code]
- [Remote Development] (VSCode extension)
- [Vagrant]
- [VirtualBox]
- [vagrant-vbguest]

### Provisoning

1. Run below commands.

```shell
$ vagrant up
$ vagrant ssh-config --host=vagrant >> ~/.ssh/config
```

2. Run Visual Studio Code.
2. Select `Remote-SSH: Connect to Host...` from command parlette.
2. Select `vagrant` as SSH host.

[Visual Studio Code]: https://code.visualstudio.com/
[Remote Development]: https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack
[Docker]: https://www.docker.com/
[Vagrant]: https://www.vagrantup.com/
[VirtualBox]: https://www.virtualbox.org/
[vagrant-vbguest]: https://github.com/dotless-de/vagrant-vbguest
