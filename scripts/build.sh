set -e

mkdir -p output

if [ "$1" == "research-paper" ]; then
    echo "Building research-paper"
    tectonic \
        --outdir output \
        research-paper/research-paper.tex
elif [ "$1" == "bibliography" ]; then
    echo "Building bibliography"
    tectonic \
        --outdir output \
        bibliography/bibliography.tex
elif [ "$1" == "research-perspectives" ]; then
    echo "Building research-perspectives"
    tectonic \
        --outdir output \
        research-perspectives/research-perspectives.tex
elif [ "$1" == "outline" ]; then
    echo "Building outline"
    tectonic \
        --outdir output \
        outline/outline.tex
elif [ "$1" == "review" ]; then
    echo "Building review"
    tectonic \
        --outdir output \
        review/review.tex
else
    echo "Building all papers"
    tectonic \
        --outdir output \
        research-paper/research-paper.tex

    tectonic \
        --outdir output \
        bibliography/bibliography.tex

    tectonic \
        --outdir output \
        research-perspectives/research-perspectives.tex

    tectonic \
        --outdir output \
        outline/outline.tex
    tectonic \
        --outdir output \
        review/review.tex
fi
