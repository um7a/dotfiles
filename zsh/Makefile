.PHONY: help
help:
	@echo ""
	@echo "  TARGETS"
	@echo "    build   ... Build files."
	@echo "    clean   ... Clean files."
	@echo "    install ... Install files."
	@echo ""

zsh-syntax-highlighting:
	git clone --branch 0.8.0 https://github.com/zsh-users/zsh-syntax-highlighting.git

zsh-autosuggestions:
	git clone --branch v0.7.1 https://github.com/zsh-users/zsh-autosuggestions.git

git-prompt.sh:
	curl -O https://raw.githubusercontent.com/git/git/refs/tags/v2.50.1/contrib/completion/git-prompt.sh

.PHONY: build
build: zsh-syntax-highlighting zsh-autosuggestions git-prompt.sh

.PHONY: install
install: zsh-syntax-highlighting zsh-autosuggestions git-prompt.sh zshrc
	mkdir -p ~/.zsh
	cp -r zsh-syntax-highlighting ~/.zsh
	cp -r zsh-autosuggestions ~/.zsh
	mkdir -p ~/.zsh/git
	cp git-prompt.sh ~/.zsh/git
	cp zshrc ~/.zshrc

.PHONY: clean
clean:
	rm -rf zsh-syntax-highlighting
	rm -rf zsh-autosuggestions
	rm git-prompt.sh
