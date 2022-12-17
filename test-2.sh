#!/bin/bash
# NOTE : Quote it else use array to avoid problems #
FILES="./*"
for f in $FILES
do
  cat "$f"
  all=$(stat "$f")
  printf "$all"
done
#based from https://www.cyberciti.biz/faq/bash-loop-over-file/

if [ "$1" = "save" ];then
   ./test-2.sh > .file-timestamps
fi
