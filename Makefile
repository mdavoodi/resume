.PHONY: all clean

all: mdavoodi_resume.pdf

%.pdf: %.xtx mdavoodi_resume.cls
	xelatex $(*).xtx
	bibtex $(*)
	xelatex $(*).xtx
	xelatex $(*).xtx

clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.pdf
