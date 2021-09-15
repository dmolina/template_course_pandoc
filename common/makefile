all: ${ASIG}_${TEMA}.pdf ${ASIG}_${TEMA}_doc.pdf

.PHONY: clean

${TEMA}.tex: ${TEMA}.md
	pandoc -d../common/beamer -o ${TEMA}.tex ${TEMA}.md
	sed -i 's/author{}/setbeamersize{text margin left=2em,text margin right=2em}/' ${TEMA}.tex

${ASIG}_${TEMA}.pdf: ${TEMA}.tex
	latexmk -pdf ${TEMA}.tex >/dev/null 2>&1
	mv ${TEMA}.pdf ${ASIG}_${TEMA}.pdf
	latexmk -C ${TEMA}.tex

${ASIG}_${TEMA}_doc.pdf: ${TEMA}.md
	pandoc -d../common/pdf -o ${TEMA}_doc.pdf ${TEMA}.md
	mv ${TEMA}_doc.pdf ${ASIG}_${TEMA}_doc.pdf

clean:
	rm ${ASIG}_${TEMA}*pdf ${TEMA}*.tex 2>/dev/null
