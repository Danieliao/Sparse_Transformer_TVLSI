PAPER = main

.PHONY: all clean veryclean watch

all: $(PAPER).pdf

$(PAPER).pdf: $(PAPER).tex reference.bib
	latexmk -pdf -interaction=nonstopmode -halt-on-error $(PAPER).tex

watch:
	latexmk -pdf -pvc -interaction=nonstopmode $(PAPER).tex

clean:
	latexmk -c $(PAPER).tex
	rm -f $(PAPER).bbl $(PAPER).blg $(PAPER).run.xml $(PAPER).synctex.gz

veryclean: clean
	rm -f $(PAPER).pdf
