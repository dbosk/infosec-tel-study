SRC+=		preamble.tex
SRC+=		abstract.tex contents.tex
SRC+= 		intro.tex
SRC+= 		related.tex
SRC+= 		method.tex
SRC+= 		results.tex
SRC+= 		conclusions.tex

DEPENDS+= 	bibedu.sty


.PHONY: all
all: notes.pdf

notes.pdf: notes.tex
notes.pdf: ${SRC} ${DEPENDS}


.PHONY: clean
clean:
	${RM} notes.pdf


INCLUDE_MAKEFILES=./makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
INCLUDE_BIBEDU=./bibedu
include ${INCLUDE_BIBEDU}/bibedu.mk
