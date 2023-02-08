

get_input() {
    echo "Enter files to count"
    read files 
    echo "Enter pattern to search"
    read pattern
    echo $files
    for i in $files:
    do
        echo $( grep $pattern $i )
    done
}

get_input