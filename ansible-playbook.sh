#!/bin/bash
set -eu

THIS_SCRIPT_DIR=$(cd "$(dirname "$0")"; pwd)
readonly THIS_SCRIPT_DIR

function main() {
    local tags="${1:-all}"

    ansible-playbook -i localhost, -c local "${THIS_SCRIPT_DIR}"/site.yml --tags="${tags}"
}

main "$@"
