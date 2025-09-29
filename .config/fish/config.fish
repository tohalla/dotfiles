eval "$(/opt/homebrew/bin/brew shellenv)"

fnm env --use-on-cd --shell fish | source

if status is-interactive
  fish_vi_key_bindings
  bind -M insert -m default jk backward-char force-repaint

  starship init fish | source

  bind -M insert -m default up history-prefix-search-backward
  bind -M insert -m default down history-prefix-search-forward
end

eval "$(pyenv init -)"

set -gx FZF_DEFAULT_COMMAND "fd --type f --hidden --follow --exclude .git"

set -g fish_greeting
set -gx EDITOR nvim

# Highlight section titles in manual pages.
set -gx LESS_TERMCAP_md "$yellow"

# Don’t clear the screen after quitting a manual page.
set -gx MANPAGER "less -X"

# Enable persistent REPL history for `node`.
set -gx NODE_REPL_HISTORY ~/.node_history
# Allow 32³ entries; the default is 1000.
set -gx NODE_REPL_HISTORY_SIZE "32768"

# Make Python use UTF-8 encoding for output to stdin, stdout, and stderr.
set -gx PYTHONIOENCODING "UTF-8"

# https://github.com/keybase/keybase-issues/issues/2798
set -gx GPG_TTY $(tty)

fish_add_path ~/go/bin \
  ~/.cargo/bin \
  /usr/local/bin \
  /usr/bin \
