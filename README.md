# Alias Searcher with `fzf`

How many times you created a shell alias for a command that is hard to remember, but then you also forgot the alias itself?

## Requirements

- [`fzf`](https://github.com/junegunn/fzf): You must have `fzf` installed.
- **Shell Compatibility**: Currently, this script is designed for `zsh`. However, contributions to extend its support to other shells are more than welcome!

## Installation

1. Ensure you have `fzf` installed. You can usually install it via your package manager, e.g., `brew install fzf` if you're on macOS.
2. Use the convenient installation script: `curl -fsSL https://raw.githubusercontent.com/lorenzophys/search-alias/main/install.sh | sh`
3. The default key binding for invoking the alias searcher is `Ctrl-z`. If this clashes with another key binding, or if you'd simply prefer a different key, you're free to modify it to your liking within the script.

## Trust

Before piping a script from the internet to `sh`, it's good practice to check what you are about to execute. You can make sure nothing suspicious is going on in `install.sh` before running the install command. If in doubt, please open an issue.

## Contribute

Feel like this tool could be improved or expanded? Please, open a PR or an issue. Let's make command-line life easier for everyone.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
