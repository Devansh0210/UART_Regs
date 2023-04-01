DOC_SRC := uart_reg.adoc

.PHONY: all clean view

all:
	asciidoctor-pdf $(DOC_SRC)
	cp $(basename $(DOC_SRC)).pdf ../$(basename $(DOC_SRC)).pdf

clean: 
	rm $(basename $(DOC_SRC)).pdf

view: all
	xdg-open $(basename $(DOC_SRC)).pdf