#!/bin/bash -e

function display {
find . -type f -name '*' -print0 | while IFS= read -r -d '' file
do
    #name=$(basename "$file")
    #path=$(dirname "$file")
    # full_path=$(readlink -f "$file") # This only works on Linux
    #full_path=$(echo "$PWD/${file#./}")
    #extension=${name##*.}
    #size_human_readable=$(ls -lh "$file" | awk -F' ' '{print $5}')
    #size_in_bytes=$(stat -f "%z" "$file")
    #creation_date=$(stat -f "%SB" "$file")
    #last_access=$(stat -f "%Sa" "$file")
    #last_modification=$(stat -f "%Sm" "$file")
    #last_change=$(stat -f "%Sc" "$file")
    all=$(echo -e "" && stat "$file" && echo "IPFS hash: $(ipfs add -q --only-hash "$file")" && echo -e "------------------------------")

    #printf "[$file]:\n"
    #printf "\tfile name:\t\t$name\n"
    #printf "\tfile path:\t\t$path\n"
    #printf "\tfull file path:\t\t$full_path\n"
    #printf "\tfile extension:\t\t$extension\n"
    #printf "\tfile size:\t\t$size_human_readable\n"
    #printf "\tfile size in bytes:\t$size_in_bytes\n"
    #printf "\tfile creation date:\t$creation_date\n"
    #printf "\tlast file access:\t$last_access\n"
    #printf "\tlast file modification:\t$last_modification\n"
    #printf "\tlast file change:\t$last_change\n"
    #printf "\n"
    printf "$all"
done
# from https://stackoverflow.com/a/25948226/5623661
}

if [ "$1" = "save" ];then
   echo "🤓📝 Working..."
   display > .file-timestamps
else
   display
fi
