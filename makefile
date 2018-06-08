all: pdf/rats/rat-*.pdf pdf/slides/slides*pdf pdf/course-notes.pdf \
	pdf/course-slides.pdf pdf/standards.pdf \
	pdf/exercise-library.pdf pdf/homework.pdf pdf/sample-exercises.pdf \
	pdf/facilitator-notes.pdf 

pdf/course-notes.pdf: tex/course-notes.sty tex/tbil-de.sty tex/course-notes.tex \
						tex/modules/*/sections/*.tex
	cd tex; \
	pdflatex --output-directory=aux course-notes.tex; \
	pdflatex --output-directory=aux course-notes.tex; \
	mv aux/course-notes.pdf ../pdf

pdf/course-slides.pdf: tex/course-slides.sty tex/tbil-de.sty tex/course-slides.tex \
						tex/modules/*/sections/*.tex
	cd tex; \
	pdflatex --output-directory=aux course-slides.tex; \
	pdflatex --output-directory=aux course-slides.tex; \
	mv aux/course-slides.pdf ../pdf

pdf/standards.pdf: tex/tbil-de.sty tex/standards.tex tex/modules/*/standards.tex
	cd tex; pdflatex --output-directory=aux standards.tex; \
	mv aux/standards.pdf ../pdf

pdf/exercise-library.pdf: tex/exercise-library.tex tex/modules/*/exercises/*.tex
	cd tex; pdflatex --output-directory=aux exercise-library.tex; \
	mv aux/exercise-library.pdf ../pdf

pdf/facilitator-notes.pdf: tex/facilitator-notes.tex
	cd tex; pdflatex --output-directory=aux facilitator-notes.tex; \
	mv aux/facilitator-notes.pdf ../pdf

pdf/homework.pdf: tex/tbil-de.sty tex/homework.tex
	cd tex; pdflatex --output-directory=aux homework.tex; \
	mv aux/homework.pdf ../pdf

pdf/sample-exercises.pdf: tex/sample-exercises.tex
	cd tex; pdflatex --output-directory=aux sample-exercises.tex; \
	mv aux/sample-exercises.pdf ../pdf


#slides
pdf/slides/slides-1-C.pdf: tex/tbil-de.sty tex/course-slides.sty  \
							tex/modules/1-C/sections/*.tex
	cd tex; \
	pdflatex --output-directory=aux slides/slides-1-C.tex; \
	pdflatex --output-directory=aux slides/slides-1-C.tex; \
	mv aux/slides-1-C.pdf ../pdf/slides

pdf/slides/slides-2-S.pdf: tex/tbil-de.sty tex/course-slides.sty  \
							tex/modules/2-S/sections/*.tex
	cd tex; \
	pdflatex --output-directory=aux slides/slides-2-S.tex; \
	pdflatex --output-directory=aux slides/slides-2-S.tex; \
	mv aux/slides-2-S.pdf ../pdf/slides

pdf/slides/slides-3-F.pdf: tex/tbil-de.sty tex/course-slides.sty  \
							tex/modules/3-F/sections/*.tex
	cd tex; \
	pdflatex --output-directory=aux slides/slides-3-F.tex; \
	pdflatex --output-directory=aux slides/slides-3-F.tex; \
	mv aux/slides-3-F.pdf ../pdf/slides

pdf/slides/slides-4-N.pdf: tex/tbil-de.sty tex/course-slides.sty  \
							tex/modules/4-N/sections/*.tex
	cd tex; \
	pdflatex --output-directory=aux slides/slides-4-N.tex; \
	pdflatex --output-directory=aux slides/slides-4-N.tex; \
	mv aux/slides-4-N.pdf ../pdf/slides

pdf/slides/slides-5-D.pdf: tex/tbil-de.sty tex/course-slides.sty  \
							tex/modules/5-D/sections/*.tex
	cd tex; \
	pdflatex --output-directory=aux slides/slides-5-D.tex; \
	pdflatex --output-directory=aux slides/slides-5-D.tex; \
	mv aux/slides-5-D.pdf ../pdf/slides


#RATS
pdf/rats/rat-*.pdf: tex/modules/*/readiness/test.tex tex/rats/rat-*.tex
	cd tex; \
	for file in rats/*.tex; do \
		pdflatex --output-directory aux $$file; \
	done;\
	cd aux; \
	for file in rat*.pdf; do \
		mv $$file ../../pdf/rats/$$file; \
	done;


