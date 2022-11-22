#!/bin/bash -e

find . -type f -name '*' -print0 | while IFS= read -d '' file
do
    all=$(stat "$file")

    printf "$all"
done
# from https://stackoverflow.com/a/25948226/5623661

if [ "$1" = "save" ];then
   ./recursive_files_timestamp.sh > .file-timestamps
fi
