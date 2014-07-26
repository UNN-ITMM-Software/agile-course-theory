# Generating HTML
for dir in $(ls -d [0-9]*/); 
do
    echo "dir = $dir"
    cd $dir
    for f in ./*.markdown
    do
        echo "Processing $f"
        filename=$(basename "$f")
        filename="${filename%.*}"
        exported_filename="../$filename.html"
        
        if [ $f -nt $exported_filename ]; then
            echo "Writing to $exported_filename"
            pandoc -t slidy --self-contained -c ../style/slidy.css $f -o $exported_filename
        else
            echo "Nothing new to generate..."
        fi
    done
    echo
    cd ..
done