#if [[ -e readme.txt ]] ; then
#   echo 'The file "readme.txt" exists.'
#else
#   echo 'The file "readme.txt" does not exist.'
#fi

#file="config.txt"

#if [[ -e config.txt ]] ; then
#   echo 'The file' ${file} 'already exists. Comparing with default . . .'
#   diff -u config-default.txt config.txt > config-diff.txt
#   echo 'A diff has been written to "config-diff.txt".'
#else
#   echo 'The file "config.txt" does not exist. Copying default . . .'
#   cp config-default.txt config.txt
#   echo '. . . done.'
#fi

#returns() { return $*; }
#read -p "Exit code:" exit
#if (returns $exit)
#   then echo "true, $?"
#   else echo "false, $?"
#fi

returns() { return $*; }
read -p "Exit code:" exit

returns $exit && echo "true, $?" || echo "false, $?"
