# Script that saves your previous command to a sh
# Takes filename and how many commands back you want.
sum=$(($2 + 1))
history | tail -n "$sum" | head -n "$2" | cut -d ' ' -f 4- > "$1".sh
chmod +x "$1".sh
