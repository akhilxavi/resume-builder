IMAGE := akhilxavier-resume
TEX := akhilxavier-resume.tex
PDF := akhilxavier-resume.pdf

.PHONY: all build pdf clean

all: pdf

build:
	docker build -t $(IMAGE) .

pdf: build
	docker run --rm \
		-v "$(PWD):/data" \
		-w /data \
		$(IMAGE) \
		pdflatex -interaction=nonstopmode -halt-on-error $(TEX)

	docker run --rm \
		-v "$(PWD):/data" \
		-w /data \
		$(IMAGE) \
		pdflatex -interaction=nonstopmode -halt-on-error $(TEX)

clean:
	rm -f *.aux *.bbl *.bcf *.blg *.fdb_latexmk *.fls *.log *.out *.run.xml *.synctex.gz *.toc *.xmpi

