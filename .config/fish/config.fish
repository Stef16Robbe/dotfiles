if status is-interactive
    # Start with a clean slate
    set -l desired_paths \
        /opt/homebrew/bin \
        /opt/homebrew/sbin \
        /usr/local/bin \
        $HOME/.cargo/bin \
        $HOME/.local/bin \
        $HOME/.atuin/bin \
        $HOME/.krew/bin \
        $HOME/go/bin \
        $HOME/.deno/bin \
        /opt/podman/bin/ \
        /usr/local/go/bin/ \
        "/Applications/Visual Studio Code.app/Contents/Resources/app/bin" \
        "/Applications/iTerm.app/Contents/Resources/utilities" \
        /usr/bin \
        /bin \
        /usr/sbin \
        /sbin

    # Build PATH with only existing directories, no duplicates
    set -gx PATH
    for path in $desired_paths
        if test -d $path; and not contains $path $PATH
            set -a PATH $path
        end
    end

    set -gx GIT_EXECUTABLE /opt/homebrew/bin/git
    set -gx EDITOR hx
    set -gx VISUAL hx
    set -x XDG_CONFIG_HOME $HOME/.config

    if type -q zoxide
        zoxide init fish | source
    end

    if type -q fzf
        fzf --fish | source
    end

    if type -q eza
        alias ls="eza --icons=always --header --group-directories-first"
        alias la="ls --all"
        alias ll="eza --long --icons=always --group-directories-first --header"
        alias lla="ll --all"
    end

    if type -q batman
        batman --export-env | source
    end

    if type -q atuin
        # atuin init fish | source
        # Temp fix for https://github.com/atuinsh/atuin/issues/2940
        atuin init fish | sed "s/-k up/up/g" | source
    end

    alias sfc="source ~/.config/fish/config.fish"
    alias efc="hx ~/.config/fish/config.fish"
    alias ehc="hx ~/.config/helix/config.toml"
    alias ehl="hx ~/.config/helix/languages.toml"
    alias dns-toggle='sudo ~/.toggle-dns.fish'

    abbr --add bg batgrep

    abbr --add cb cargo build
    abbr --add cf cargo fmt
    abbr --add cc cargo clippy
    abbr --add ct cargo test

    abbr --add gco git checkout
    abbr --add gc git commit -S -s
    abbr --add gpl git pull
    abbr --add gps git push
    abbr --add gf git fetch
    abbr --add gd git diff
    abbr --add ga git add
    abbr --add grm git remote
    abbr --add grs git restore
    abbr --add gb git branch
    abbr --add gl git log
end
