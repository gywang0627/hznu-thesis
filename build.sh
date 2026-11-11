#!/usr/bin/env sh
set -eu
cd "$(dirname "$0")"
if command -v latexmk >/dev/null 2>&1; then
    latexmk -xelatex main.tex
else
    xelatex -interaction=nonstopmode -halt-on-error main.tex
    bibtex main
    xelatex -interaction=nonstopmode -halt-on-error main.tex
    xelatex -interaction=nonstopmode -halt-on-error main.tex
fi
