DIRS := \
	plugins \
	snippets

FILES := \
	app.json \
	appearance.json \
	community-plugins.json \
	core-plugins.json \
	graph.json \
	hotkeys.json \
	snippets/custom.css \
	$(wildcard plugins/*/data.json) \
	templates.json

DIST_DIR ?=
override DIST_DIR := $(patsubst ~/%,$(HOME)/%,$(DIST_DIR))

.PHONY: help
help:
	@echo ""
	@echo "  TARGETS"
	@echo "    distclean ... Remove all files from DIST_DIR."
	@echo "    install   ... Install files to DIST_DIR."
	@echo ""
	@echo "  EXAMPLES"
	@echo "    make install DIST_DIR=/path/to/.obsidian"
	@echo "    make distclean DIST_DIR=/path/to/.obsidian"
	@echo ""

.PHONY: install
install: $(FILES)
	@if [ -z "$(DIST_DIR)" ]; then \
		echo "Error: DIST_DIR is not set"; \
		exit 1; \
	fi
	@for dir in $(DIRS); do \
		mkdir -p "$(DIST_DIR)/$$dir"; \
	done
	@for file in $(FILES); do \
		cp "$$file" "$(DIST_DIR)/$$file"; \
	done

.PHONY: distclean
distclean:
	@for file in $(FILES); do \
		rm -f "$(DIST_DIR)/$$file"; \
	done
	@for dir in $(DIRS); do \
		rm -rf "$(DIST_DIR)/$$dir"; \
	done