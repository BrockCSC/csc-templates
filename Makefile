TEX := $(wildcard *.tex)
DVI := $(TEX:.tex=.dvi)
PS  := $(DVI:.dvi=.ps)
PDF := $(TEX:.tex=.pdf)

.PHONY: all clean none ps pdf dvi
.SECONDARIES: $(DVI)

ps: $(PS)

pdf: $(PDF)

all: ps pdf

clean:
	rm -f $(DVI) $(PS) $(PDF) *.aux *.log

%.dvi: %.tex
	latex $<

%.ps: %.dvi
	dvips -t letter -o $@ $<

%.pdf: %.tex
	pdflatex $<

%.pdf: %.ps
	ps2pdf -sPAPERSIZE=letter $<
