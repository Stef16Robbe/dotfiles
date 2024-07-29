if type -q eza
    alias ls "eza -1 --group-directories-first"
    alias la "ls -a"
    alias ll "eza -l -g --icons --group-directories-first -h"
    alias lla "ll -a"
end

if type -q bat
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

if type -q uv
    alias pip "uv pip"
    alias pip3 "uv pip"
    alias venv "uv venv"
end

if type -q python3
    alias activate "source .venv/bin/activate.fish"
end
