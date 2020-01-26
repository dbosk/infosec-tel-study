.PHONY: all
all: notes.pdf

SRC+=		preamble.tex
SRC+=		abstract.tex contents.tex
SRC+= 		intro.tex
SRC+= 		related.tex
SRC+= 		method.tex
SRC+= 		results.tex
SRC+= 		conclusions.tex

notes.pdf: notes.tex
notes.pdf: ${SRC}


.PHONY: clean
clean:
	${RM} notes.pdf


INCLUDE_MAKEFILES=./makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
