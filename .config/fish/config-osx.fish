if type -q eza
    alias ls "eza -1 --group-directories-first"
    alias la "ls -a"
    alias ll "eza -l -g --icons --group-directories-first -h"
    alias lla "ll -a"
end

if type -q bat
    alias bat "bat --paging=never --theme=1337 --style=plain"

    alias bathelp "bat --language=help"
    function info
        $argv --help 2>&1 | bathelp
    end
end

if type -q fuck
    thefuck --alias | source
end

if type -q zoxide
    zoxide init fish | source
end
