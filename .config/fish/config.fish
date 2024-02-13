if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_config theme choose "Base16 Default Dark"

source (dirname (status --current-filename))/config-osx.fish

#switch (uname)
#  case Darwin
#    source (dirname (status --current-filename))/config-osx.fish
#  case '*'
#    ...
