MAKE_CMD?=	make

BIBLIOGRAPHY!=	find -L . -name "bibligrafia.bib"
DOCUMENT= Appunti_di_matematica.pdf
IMAGES_PREFIX=	Immagine_
IMAGES_PNG=	${IMAGES_M:.m=.png}
IMAGES_M!=	find . -name "${IMAGES_PREFIX}*.m"
TESTS_DIR= Libreria_octave `grep -E '^[^%%]*input' main.tex | sed 's,^.*{,,' | sed 's,/sections.tex},,'`
TESTS_OUTPUT= ${DOCUMENT:.pdf=.test}
SOURCES!=	find -L . -name "*.sty" -o -name "*.tex" -o -name "*.xml"
SOURCES+=	${BIBLIOGRAPHY}

all ${DOCUMENT}: ${SOURCES} images
	export TEXINPUTS=style//: && \
	pdflatex --shell-escape  main.tex && \
	pdflatex --shell-escape main.tex && \
	if test -e "main.bib"; then bibtex main; fi && \
	if test -e "glossary.tex"; then makeglossaries main; fi && \
	if test -e "main.idx"; then makeindex main; fi && \
	pdflatex --shell-escape main.tex && \
	pdflatex --shell-escape main.tex && \
	mv main.pdf ${DOCUMENT}
	${MAKE_CMD} test &> ${TESTS_OUTPUT}

compress: clean	
	rm -f ~/Appunti.tar.gz && \
	cd ~ && \
	tar -cvf Appunti.tar Appunti && gzip Appunti.tar

images: ${IMAGES_PNG}

save: compress all

test:
	for x in ${TESTS_DIR}; \
	do \
			if test -e "$$x/tests/Makefile"; \
			then \
				cd $$x/tests/ && ${MAKE_CMD} all && cd ../..; \
			fi \
	done
	

clean:
	rm -f ${DOCUMENT} ${TESTS_OUTPUT}
	rm -Rf _minted-main
	for x in main.*; do if test "$$x" != "main.tex"; then rm $$x; fi; done
	for x in ${IMAGES_PNG}; do rm -f $$x; done
	for x in ${TESTS_DIR}; \
	do \
			if test -e "$$x/tests/Makefile"; \
			then \
				cd $$x/tests/ && ${MAKE_CMD} clean && cd ../..; \
		fi \
	done

.SUFFIXES: .m .png

.m.png:
	cd $$(echo $^ | rev | cut -f 2- -d '/' | rev) && \
	octave --no-gui --path $$(echo `find .. -type d` | sed "s/ /:/g") \
	$$(echo $< | rev | cut -f 1 -d '/' | rev)
