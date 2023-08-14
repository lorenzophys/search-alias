#!/bin/bash

set -e

GITHUB_URL="https://raw.githubusercontent.com/lorenzophys/search-alias/main/search-alias.sh"

command_exists() {
	command -v "$@" > /dev/null 2>&1
}

do_install() {

    if ! command_exists fzf; then
        cat >&2 <<-'EOF'
			Warning: this tool relies on fzf, but fzf is not installed on the system.

            You can follow the installation instructions outlined here:
            https://github.com/junegunn/fzf#installation

            Please install fzf first, then rerun this script.
		EOF

        exit 1
    fi

    if ! command_exists curl; then
        cat >&2 <<-'EOF'
			Warning: 'curl' not found, please install it and rerun this script.
		EOF

        exit 1
    fi

    read -p "Some code will be appended to your ~/.zshrc, is that ok? [Y/n]" -n 1 -r confirm
    echo

    if ! [[ -z $confirm || $confirm =~ ^[Yy]$ ]]
    then
        [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1
    fi

    {
        echo 
        curl -fsSL "$GITHUB_URL"
    } >> ~/.zshrc

    if [ $? -eq 0 ]; then
        echo "Alias searcher snippet has been appended to your .zshrc!"
        echo "Feel free to change the key binding."
    else
        echo "Error: Failed to download or append the code."
        exit 1;
    fi
}

do_install
