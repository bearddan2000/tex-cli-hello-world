#! /bin/env bash

FILE=hello && pdftex -halt-on-error -interaction=batch $FILE.tex 1>&2 && \
    pdf2html $FILE.pdf > $FILE.html && \
    html2txt $FILE.html && \
    rm -f *.aux *.html *.log *.pdf