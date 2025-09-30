TARGETS = \
	report.pdf \
	presentation.pdf \
	handouts.pdf \

SHARED_DEPS = \
	Makefile \
	shared.tex \

REPORT_DEPS = \
	${SHARED_DEPS} \

PRESENTATION_DEPS = \
	${SHARED_DEPS} \

LATEX_ENGINE = lualatex


all: ${TARGETS}

clean:
	touch ${TARGETS}
	rm    ${TARGETS}

mrproper: clean
	touch d~ d.atfi d.aux d.bbl d.bcf d.blg d.lof d.log d.out d.run.xml d.toc d.upa d.upb
	rm    *~ *.atfi *.aux *.bbl *.bcf *.blg *.lof *.log *.out *.run.xml *.toc *.upa *.upb
	touch d.nav d.snm d.vrb
	rm    *.nav *.snm *.vrb


report.pdf: report.tex ${REPORT_DEPS}
	${LATEX_ENGINE} -shell-escape report.tex
	biber report.bcf
	${LATEX_ENGINE} -shell-escape report.tex
	${LATEX_ENGINE} -shell-escape report.tex

presentation.pdf: presentation.tex ${PRESENTATION_DEPS}
	${LATEX_ENGINE} -shell-escape presentation.tex
	${LATEX_ENGINE} -shell-escape presentation.tex

handouts.pdf: handouts.tex ${PRESENTATION_DEPS}
	${LATEX_ENGINE} -shell-escape handouts.tex
	${LATEX_ENGINE} -shell-escape handouts.tex

