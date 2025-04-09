# Determine size of a file or total size of a directory
function fs
    if du -b /dev/null >/dev/null 2>&1
        set -l arg "-sbh"
    else
        set -l arg "-sh"
    end

    if set -q argv[1]
        du $arg -- $argv
    else
        du $arg ".*[^..]*" ./*
    end
end
