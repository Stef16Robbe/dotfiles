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
