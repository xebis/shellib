#!/usr/bin/env bash
set -o pipefail
IFS=$'\n\t'
LANG=C

setup() {
    load 'helpers/bats-support/load'
    load 'helpers/bats-assert/load'

    export TEST_MOCK_ARGV=('scripts/set-ver')

    . scripts/set-ver
}

@test 'scripts/set-ver set_shellib_version success test' {
    local version_file='src/shellib.sh'
    local backup_file='src/shellib.sh.bup'
    local version='0.0.0+test-set_shellib_version'

    cp "$version_file" "$backup_file"
    run set_shellib_version "$version"
    rm "$version_file"
    mv "$backup_file" "$version_file"

    assert_success
    assert_output "s/shellib_version=\".*\"/shellib_version=\"$version\"/"
}

@test 'scripts/set-ver set_shellib_version fail test' {
    run set_shellib_version

    assert_failure
    assert_output 'scripts/set-ver ✗ Next version expected as the first parameter'
}
