# Playbooks

[![license](https://img.shields.io/badge/LICENSE-MIT-blue.svg)](LICENSE)

Ansible と Vagrant で Linux の仮想環境を構築します。

## 必要なもの

- [VirtualBox]
- [Vagrant]
- [vagrant-vbguest]
- [Ansible]
- [Visual Studio Code]
- [Remote Development] (VSCode extension)

## 環境構築手順

ソースコードをクローンします。

```shell
$ git clone https://github.com/rinatz/playbooks
```

必要に応じて `Vagrantfile` を編集して box イメージを変更してください。
動作確認済みの box イメージは次のとおりです。

- `bento/centos-7`
- `bento/amazonlinux-2`
- `bento/ubuntu-16.04`

ホスト OS とのマウント先を変更したければ下記を変更してください。

```ruby
if Vagrant::Util::Platform.windows? then
  # ホスト OS が Windows のときの設定
  config.vm.synced_folder "#{ENV['USERPROFILE']}", "/mnt/vagrant"
else
  # ホスト OS が macOS, Linux のときの設定
  config.vm.synced_folder "~", "/mnt/vagrant"
end
```

メモリや CPU 数を変更したい場合は下記を変更してください。

```ruby
vb.memory = 4096
vb.cpus = 2
```

ディスク容量を変更したい場合は下記を変更してください。

```ruby
config.vm.disk :disk, size: "200GB", primary: true
```

ただしディスク容量の変更には Vagrant の試験的機能を使う必要があるため下記の環境変数も合わせて設定してください。

```bash
VAGRANT_EXPERIMENTAL=disks
```

`Vagrantfile` の編集が終わったら下記コマンドで仮想環境を構築します。

```shell
$ vagrant up
```

## VSCode で仮想マシンに接続する

[Remote Development] 拡張機能を使って仮想マシンに接続することができます。
まず SSH でログインできるようにするため仮想マシンの接続先を ssh_config に登録します。

```shell
$ vagrant ssh-config --host=vagrant >> ~/.ssh/config
```

設定が終われば VSCode の左に出てくる `Remote Explorer` アイコンより `SSH Targets` を選択します。
そこに `vagrant` という項目が表示されるので、そこから仮想マシンに接続できます。

[Ansible]: https://www.ansible.com/
[Visual Studio Code]: https://code.visualstudio.com/
[Remote Development]: https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack
[Vagrant]: https://www.vagrantup.com/
[VirtualBox]: https://www.virtualbox.org/
[vagrant-vbguest]: https://github.com/dotless-de/vagrant-vbguest
