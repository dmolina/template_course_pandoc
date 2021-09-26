all: ${ASIG}_${TEMA}.pdf ${ASIG}_${TEMA}_doc.pdf

.PHONY: clean

${TEMA}.tex: ${TEMA}.md
	pandoc -d../common/beamer -o ${TEMA}.tex ${TEMA}.md
	# Get the authors from the template
	sed -i 's/author{}/setbeamersize{text margin left=2em,text margin right=2em}/' ${TEMA}.tex
	# Center figures
	sed -i 's/textwidth,height=\\textheight/textwidth,center/' ${TEMA}.tex

${ASIG}_${TEMA}.pdf: ${TEMA}.tex
	latexmk -pdf ${TEMA}.tex >/dev/null 2>&1
	mv ${TEMA}.pdf ${ASIG}_${TEMA}.pdf
	latexmk -C ${TEMA}.tex
	rm ${TEMA}.tex

${TEMA}_doc.tex: ${TEMA}.md
	pandoc -d../common/pdf -o ${TEMA}_doc.tex ${TEMA}.md
	# Get the authors from the template
	sed -i 's/\\author{}//' ${TEMA}_doc.tex
	# Center figures
	sed -i 's/textwidth,height=\\textheight/textwidth,center/' ${TEMA}.tex

${ASIG}_${TEMA}_doc.pdf: ${TEMA}_doc.tex
	latexmk -pdf ${TEMA}_doc.tex >/dev/null 2>&1
	mv ${TEMA}_doc.pdf ${ASIG}_${TEMA}_doc.pdf
	latexmk -C ${TEMA}_doc.tex
	rm ${TEMA}_doc.tex

clean:
	rm ${ASIG}_${TEMA}*pdf ${TEMA}*.tex 2>/dev/null
