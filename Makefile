FORMAT=markdown+yaml_metadata_block
TEMPLATE=templates/jb2resume.latex
INPUT=cv.md
CMD=pandoc -f $(FORMAT)

pdf: $(INPUT) $(TEMPLATE)
	$(CMD) $(INPUT) --template $(TEMPLATE) --pdf-engine=xelatex -o cv.pdf

tex: $(INPUT) $(TEMPLATE)
	$(CMD) $(INPUT) --template $(TEMPLATE) -o cv.tex
