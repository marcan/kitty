function __ksi_completions
    set --local ct (commandline --current-token)
    set --local tokens (commandline --tokenize --cut-at-cursor --current-process)
    printf "%s\n" $tokens $ct | command kitty-tool __complete__ fish | source -
end

complete -f -c kitty-tool -a "(__ksi_completions)"
