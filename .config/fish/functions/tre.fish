function tre
    tree -aC --gitignore -I '.git' --dirsfirst $argv | less -FRNX
end
