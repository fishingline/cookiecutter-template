.DEFAULT_GOAL := help

SHELL = bash -o pipefail

.PHONY: test
test:
	./tests/bin/runtests | ./tests/bin/colorizetap

.PHONY: pretty
pretty:
	fish_indent -w ./**/*.fish
	fish_indent -w ./tests/bin/runtests

.PHONY: help
help:
	@echo "help    show this message"
	@echo "test    run tests"
	@echo "pretty  Run fish_indent against all fish files. "
