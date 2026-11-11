$ErrorActionPreference = 'Stop'
Push-Location $PSScriptRoot
try {
    if (Get-Command latexmk -ErrorAction SilentlyContinue) {
        & latexmk -xelatex main.tex
        if ($LASTEXITCODE -ne 0) { throw 'LaTeX build failed. See main.log.' }
    } else {
        & xelatex -interaction=nonstopmode -halt-on-error main.tex
        if ($LASTEXITCODE -ne 0) { throw 'XeLaTeX failed. See main.log.' }
        & bibtex main
        if ($LASTEXITCODE -ne 0) { throw 'BibTeX failed. See main.blg.' }
        & xelatex -interaction=nonstopmode -halt-on-error main.tex
        if ($LASTEXITCODE -ne 0) { throw 'XeLaTeX failed. See main.log.' }
        & xelatex -interaction=nonstopmode -halt-on-error main.tex
        if ($LASTEXITCODE -ne 0) { throw 'XeLaTeX failed. See main.log.' }
    }
    Write-Host '完成：main.pdf'
} finally { Pop-Location }
