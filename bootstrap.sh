#!/bin/bash
set -eu

function main() {
    python3 -m pip install --user ansible
    ansible-playbook -i localhost, -c local --ask-become-pass bootstrap.yml
}

main "$@"
