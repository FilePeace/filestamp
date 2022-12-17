#!/bin/bash
# NOTE : Quote it else use array to avoid problems #
FILES="./*"
for f in $FILES
do
  all=$(stat "$f")
  printf "$all"
done
#based from https://www.cyberciti.biz/faq/bash-loop-over-file/

if [ "$1" = "save" ];then
   ./test-4.sh > .file-timestamps
fi
