function diff
    if command -q git
        git diff --no-index --color-words $argv
    end
end
