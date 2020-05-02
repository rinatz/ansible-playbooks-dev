# playbooks

[![license](https://img.shields.io/badge/LICENSE-MIT-blue.svg)](LICENSE)

This is Ansible playbooks for development with VSCode.

## Requirements

- [Visual Studio Code]
- [Remote Development] (VSCode extension)
- [Vagrant]
- [VirtualBox]
- [vagrant-vbguest]

## Getting started

```shell
$ git clone https://github.com/rinatz/playbooks
```

1. Run below commands.

```shell
$ vagrant up
$ vagrant ssh-config --host=vagrant >> ~/.ssh/config
```

2. Run Visual Studio Code.
3. Select `Remote-SSH: Connect to Host...` from command parlette.
4. Select `vagrant` as SSH host.

[Visual Studio Code]: https://code.visualstudio.com/
[Remote Development]: https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack
[Vagrant]: https://www.vagrantup.com/
[VirtualBox]: https://www.virtualbox.org/
[vagrant-vbguest]: https://github.com/dotless-de/vagrant-vbguest
