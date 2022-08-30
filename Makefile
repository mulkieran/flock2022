FIGURES = dependency.svg \
	  dependency1.svg \
	  dependency2.svg

%.svg: %.odg
	soffice --headless --convert-to svg $<

presentation.pdf: presentation.lyx ${FIGURES}
	lyx -batch --export pdf $<

clean:
	rm *.pdf

.PHONY:
	clean
