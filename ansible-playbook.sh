#!/bin/bash
set -eu

function main() {
    local tags="${1:-all}"

    ansible-playbook -i localhost, -c local site.yml --tags="${tags}"
}

main "$@"
