TARGETS = \
	report.pdf \

SHARED_DEPS = \
	Makefile \

REPORT_DEPS = \
	${SHARED_DEPS} \
	shared.tex \

LATEX_ENGINE = lualatex


all: ${TARGETS}

clean:
	touch ${TARGETS}
	rm    ${TARGETS}

mrproper: clean
	touch d~ d.atfi d.aux d.bbl d.bcf d.blg d.lof d.log d.out d.run.xml d.toc d.upa d.upb
	rm    *~ *.atfi *.aux *.bbl *.bcf *.blg *.lof *.log *.out *.run.xml *.toc *.upa *.upb


report.pdf: report.tex ${REPORT_DEPS}
	${LATEX_ENGINE} report.tex
	biber report.bcf
	${LATEX_ENGINE} report.tex
	${LATEX_ENGINE} report.tex

