all: install

prepare:
	@mkdir -p ${HOME}/spells

install: prepare
	ln -s $(abspath gif2webm.sh) ${HOME}/spells/gif2webm
