set -e

# Get the Git root
root="$(git rev-parse --show-toplevel)"
cd $root/slides

# Create directory for rendered slides
rendered_slides_dir="$root/slides-rendered"
mkdir -p $rendered_slides_dir

# Generating HTML
for dir in $(ls -d [0-9]*/);
do
    echo "dir = $dir"
    cd $dir
    for f in ./*.md
    do
        echo "Processing $f"
        filename=$(basename "$f")
        filename="${filename%.*}"
        rendered="$rendered_slides_dir/$filename.html"

        if [ $f -nt $rendered ]; then
            echo "Writing to $rendered"
            pandoc -t slidy -c ../style/slidy.css --self-contained -o $rendered $f
        else
            echo "Nothing new to generate..."
        fi
    done
    echo
    cd ..
done
