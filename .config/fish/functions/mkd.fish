# Create a new directory and enter it
function mkd
    mkdir -p $argv && cd $argv[-1]
end
