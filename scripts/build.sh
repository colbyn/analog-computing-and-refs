set -e

mkdir -p output
tectonic \
    --outdir output \
    research-paper/research-paper.tex

tectonic \
    --outdir output \
    bibliography/bibliography.tex
