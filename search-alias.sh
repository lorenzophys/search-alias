# Search aliases: https://github.com/lorenzophys/search-alias/tree/main
fzf-search-alias() {
    # Get aliases, remove the alias prefix, feed into fzf, return only the alias string
    selected=$(alias | sed 's/alias //' | fzf | awk -F'=' '{print $1}')

    # If an alias was selected, place it in the buffer
    if [[ ! -z "$selected" ]]; then
	LBUFFER=$selected
    fi
}

# Bind the function to Ctrl+z
zle -N fzf-search-alias
bindkey "^z" fzf-search-alias
# End of search aliases
