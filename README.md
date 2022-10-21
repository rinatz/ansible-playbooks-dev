# Playbooks

[![license](https://img.shields.io/badge/LICENSE-MIT-blue.svg)](LICENSE)

Ansible で Linux の開発環境を構築します。

## 必要なもの

- [Ansible]

環境構築する対象のホストにパスワードなしで SSH 接続できるようにしてください。

## 対応 OS

- Amazon Linux 2
- Ubuntu 22.04

## 使い方

リポジトリをクローンします。

```shell
$ git clone https://github.com/rinatz/playbooks
```

`playbooks` ディレクトリに移動して下記を実行してください。

```shell
$ ansible-playbook -i HOST,... site.yml [-t TAG,...]

Options:
  -i HOST       環境構築する対象のホスト名をカンマ区切りで指定（1つであってもカンマが必要）
  -t TAG        実行するロール名をカンマ区切りで指定（--tags が未指定であればすべてのロールを実行）
```

[Ansible]: https://docs.ansible.com/ansible/latest/index.html
