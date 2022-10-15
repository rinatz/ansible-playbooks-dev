#!/bin/bash
set -eu

#
# Load 'NAME' environment variable
#
# shellcheck disable=SC1091
[[ -f "/etc/os-release" ]] && source "/etc/os-release"

readonly DISTRIBUTION="${NAME:-}"

function fatal() {
    printf "\e[31m\e[1mFATAL\e[0m %s\n" "$*" >&2
    exit 1
}

function install_ansible_on_amazon() {
    sudo amazon-linux-extras enable ansible2
    sudo yum clean metadata
    sudo yum install -y ansible
}

function install_ansible_on_ubuntu() {
    sudo apt-get update
    sudo apt-get install -y software-properties-common
    sudo apt-add-repository -y --update ppa:ansible/ansible
    sudo apt-get install -y ansible
}

function install_ansible() {
    case "${DISTRIBUTION}" in
    "Amazon Linux") install_ansible_on_amazon ;;
    "Ubuntu") install_ansible_on_ubuntu ;;
    *) fatal "This platform is not supported" ;;
    esac
}

function main() {
    install_ansible
}

main "$@"
