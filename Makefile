ZIP_NAME := package.zip
DEST ?= ../rls_career_overhaul_2.4.1.zip

.PHONY: all
all: $(ZIP_NAME)

$(ZIP_NAME):
	@echo "zipping current directory into $(ZIP_NAME)..."
	@zip -r $(ZIP_NAME) . -x "$(ZIP_NAME)" "Makefile"

.PHONY: install
install: all
	@echo "moving $(ZIP_NAME) to $(DEST)..."
	@mv -f "$(ZIP_NAME)" "$(DEST)"
