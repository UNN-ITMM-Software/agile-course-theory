set -e

OK=0
ERROR=1

function check_size_of_files {
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
}

function check_spaces {
    echo "checking the existence of spaces"
    for f in `find . -name '*.md'`;
    do
        if grep -n ' $' -- $f;
        then

            echo "error: $f has spaces in the end of line:"
            echo "$(grep -n ' $' -- $f)"
            exit $ERROR
        fi
    done
}

function check_tabs {
    echo "checking the existence of tabs"
    for f in `find . -name '*.md'`;
    do
        if grep -n $'\t' -- $f;
        then
            echo "error: $f has tabs:"
            echo "$(grep -n $'\t' -- $f)"
            exit $ERROR
        fi
    done
}

function check_images {
    echo "checking the existence of images"
    for f in `find . -name '*.md'`;
    do

        if ! egrep -q -o '!\[\]\([^)]*\)' -- $f;
        then
            continue
        fi

        for i in `egrep -o '!\[\]\([^)]*\)' -- $f`;
        do

            folder=$(echo "$f" | egrep -o '/.*/')
            img="${folder:1:${#folder}-2}/${i:6:${#i}-7}"

            if [ ! -f $img ]; then
                echo "error: $img not exists"
                exit $ERROR
            fi
        done
    done
}

function main {
    echo "Start checking Markdown slides"

    # Go to the root of the Git repository
    root="$(git rev-parse --show-toplevel)"
    cd $root/slides

    # Run all the checks
    check_size_of_files
    check_spaces
    check_tabs
    check_images

    exit $OK
}

main
