# shellcheck shell=bash

# Workaround to tell shellcheck ./process.sh is already sourced
# shellcheck source=./process.sh
. /dev/null
# shellcheck source=./events.sh
. /dev/null

# Functions
# Install apt package
#   $1 ... Package name
# Stderr: events
# Status: "$status_ok" on success, one of "$status_*" otherwise
# Side effects: package is installed
function apt_install() {
    local package="${1:-}"

    if [ -z "$package" ]; then
        err 'Missing package'
        return "$status_err"
    fi

    if ! apt-get -v &>/dev/null || ! apt-cache -v &>/dev/null; then
        err 'apt-get or apt-cache not found'
        return "$status_err"
    fi

    if apt-cache search -n "^$package$" 2>/dev/null | grep "^$package" >/dev/null; then
        if apt-cache pkgnames "^$package$" 2>/dev/null | grep "^$package" >/dev/null; then
            info "Apt package '$package' already installed" "$symbol_done"
        else
            if is_root; then
                info "Apt package '$package' installation" "$symbol_doing"
                apt-get update
                if apt-get install -y "$package"; then
                    info "Apt package '$package' installed" "$symbol_done"
                else
                    err "Apt package '$package' installation failed" "$symbol_failed"
                    return "$status_err"
                fi
            else
                info "Apt package '$package' is not installed" "$symbol_todo"
                warn "Apt package '$package' could be installed by root only"
                info 'Try again as root' "$symbol_tip"
                return "$status_err"
            fi
        fi
    else
        err "Apt package '$package' not found"
        info "Try 'apt-get update' first" "$symbol_tip"
        return "$status_err"
    fi
}

# Install a package
#   $1 ... command to execute, only 'install' supported
#   $2 ... Package, formatted as 'manager:package'
# Stderr: events
# Status: "$status_ok" on success, one of "$status_*" otherwise
# Side effects: package is installed
function pkg() {
    local command="${1:-}"
    local manager
    local package

    case "$command" in
    install)
        if [ -z "${2:-}" ]; then
            err 'Missing package to install'
            return "$status_err"
        fi
        if ! [[ "$2" =~ ^[^:]+:[^:]+$ ]]; then
            err "Wrong package format '$2', should be 'manager:package'"
            return "$status_err"
        fi
        manager="${2%%:*}"
        package="${2#*:}"

        call="${manager}_$command"
        if type "$call" &>/dev/null; then
            "$call" "$package"
        else
            err "Missing function '$call'"
            return "$status_err"
        fi
        ;;

    '')
        err "Missing command"
        return "$status_err"
        ;;
    *)
        err "Unknown command '$command'"
        return "$status_err"
        ;;
    esac
}

# Install a list of packages
#   $1 ... command to execute, only 'install' supported
#   $2 ... 1st package, formatted as 'manager:package'
#   [$3] ... 2nd package, formatted as 'manager:package'
#   ...
#   [$n] ... nth package, formatted as 'manager:package'
# Stderr: events
# Status: "$status_ok" on success, one of "$status_*" otherwise
# Side effects: packages are installed
function pkgs() {
    local command="${1:-}"

    case "$command" in
    install)
        shift
        if [ "$#" -gt '0' ]; then
            for package in "$@"; do
                pkg "$command" "$package"
            done
        else
            err "Missing package list"
            return "$status_err"
        fi
        ;;
    '')
        err "Missing command"
        return "$status_err"
        ;;
    *)
        err "Unknown command '$command'"
        return "$status_err"
        ;;
    esac
}
