if status is-interactive
    # Commands to run in interactive sessions can go here
    fish_config theme choose coolbeans
end

source (dirname (status --current-filename))/aliases.fish

#switch (uname)
#  case Darwin
#    source (dirname (status --current-filename))/config-osx.fish
#  case '*'
#    ...

# abbreviations
abbr --add gch 'git checkout'
abbr --add gco 'git commit -m'
abbr --add coc 'cog commit'
abbr --add gps 'git push'
abbr --add gs 'git status'
abbr --add gpl 'git pull'
abbr --add gb 'git branch'
abbr --add grs 'git restore'
abbr --add grm 'git remote'
abbr --add gm 'git merge'
abbr --add ga 'git add'
abbr --add kb "kustomize build"
abbr --add gd "git diff"
