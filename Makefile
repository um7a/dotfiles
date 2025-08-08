zsh-syntax-highlighting.zsh:
	curl -O https://raw.githubusercontent.com/zsh-users/zsh-syntax-highlighting/refs/tags/0.8.0/zsh-syntax-highlighting.zsh

zsh-autosuggestions.zsh:
	curl -O https://raw.githubusercontent.com/zsh-users/zsh-autosuggestions/refs/tags/v0.7.1/zsh-autosuggestions.zsh

git-prompt.sh:
	curl -O https://raw.githubusercontent.com/git/git/refs/tags/v2.50.1/contrib/completion/git-prompt.sh

.PHONY: install
install: zsh-syntax-highlighting.zsh zsh-autosuggestions.zsh git-prompt.sh zshrc
	mkdir -p ~/.zsh
	cp zsh-syntax-highlighting.zsh ~/.zsh
	cp zsh-autosuggestions.zsh ~/.zsh
	cp git-prompt.sh ~/.zsh
	cp zshrc ~/.zshrc
