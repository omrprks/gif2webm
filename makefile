.PHONY: all

SCRIPT=gif2webm.sh
SRC=$(abspath ${SCRIPT})
OUT=$(basename ${SCRIPT})
DIST=/usr/local/bin/${OUT}
SPELLS_DIR=${HOME}/spells

all:
	@echo Nothing to see here

link.prepare:
	@mkdir -p ${SPELLS_DIR}

link: link.prepare
	@ln -s ${SRC} ${SPELLS_DIR}/${OUT}
	@chmod +x ${SPELLS_DIR}/${OUT}

install:
	@cp ${SRC} ${DIST}
	@chmod +x ${DIST}
