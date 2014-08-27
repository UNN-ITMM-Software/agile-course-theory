set -e
ERROR=1
echo "Start checking Markdown slides"

# Get the Git root
root="$(git rev-parse --show-toplevel)"
cd $root/slides



echo "checking sizeof files ..."
MAX_SIZE=524288 # in bytes 512kb

for f in `find . -name '*'`; 
do 
    size=`stat -c%s $f`;
    if [ $size -ge $MAX_SIZE ]
    then
        echo -e "error: sizeof($f): $size >= MAX_SIZE($MAX_SIZE)"
        exit $ERROR
    fi
done
