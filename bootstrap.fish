#!/usr/bin/env fish

git pull origin main

read -P "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1 confirm
echo ""
if string match -q -r '^[Yy]$' $confirm
	rsync --exclude ".git/" \
		--exclude "bootstrap.sh" \
		--exclude "brew.sh" \
		--exclude "README.md" \
		--exclude "LICENSE-MIT.txt" \
		--filter=':- .gitignore' \
		-avh --no-perms . ~

	source ~/.config/fish/config.fish
end
