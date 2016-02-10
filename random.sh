i="/usr/share/dict/words"
words="$i"
in=$RANDOM
echo $(sed -n "$in p" $words)

