#!/bin/bash -e

function display {
SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
echo "This folder: $SCRIPTPATH"

# NOTE : Quote it else use array to avoid problems #
FILES="./*"
for f in $FILES
do
  all=$(echo -e "" && stat "$f" && echo "IPFS hash: $(ipfs add -q --only-hash "$file")" && echo -e "------------------------------")
  printf "$all"
# from https://stackoverflow.com/a/25948226/5623661
done
#based from https://www.cyberciti.biz/faq/bash-loop-over-file/
}

if [ "$1" = "save" ];then
   echo "🤓📝 Working..."
   display > .folderstamp
else
   display
fi
