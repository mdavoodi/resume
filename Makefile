.PHONY: all clean

all: mdavoodi_resume.pdf

%.pdf: %.xtx mdavoodi_resume.cls
	xelatex --halt-on-error -interaction=batchmode $(*).xtx

clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.pdf
