#!/usr/local/bin/zsh

RED='\033[1;31m'
BLUE='\033[0;34m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
PURPLE='\033[0;35m'
PINK='\033[1;35m'
NC='\033[0m' # No Color
COLOURS_TO_CHOOSE="RED GREEN"
COLOURS_TO_CHOOSE=${1:-"RED GREEN BLUE PURPLE PINK YELLOW"}
CHARS="01 "
CHARS=${2:-"01 "}
num_chars=${#CHARS}
DO_BLOCKS=${3:-0}
if [ $DO_BLOCKS  -eq 1 ]; then
    num_chars=1
    CHARS='\u2588'
fi
setopt shwordsplit
declare -a colours
for one_thing in $COLOURS_TO_CHOOSE; do
     s=`eval echo $"$one_thing"`
     colours+=($s)
done
unsetopt shwordsplit
#colours=($RED $BLUE $GREEN $YELLOW $PURPLE $PINK)
spaces=`wc -w <<< "$colours"`
#spaces="$((spaces+1))"
function getChar(){
    return_val="REE"
    c='0'
    c='\u2588'
    c='0'
    j=0
    tmp="$((RANDOM%spaces))"
    for i in "${colours[@]}"; do
        j="$((j+1))"
        if [ $tmp -lt $j ]; then
            abc="$((RANDOM%num_chars))"
            #echo $abc
            for l in {0..$((num_chars-1))}; do
                if [ $abc -le $l ]; then
                    if [ $num_chars -eq 1  ]; then
                        d=$CHARS
                    else

                        d="${CHARS:$l:1}"
                    fi
                    break
                fi
            done
            return_val="${i}$d${NC}"
            break
        fi
    done
}

while true; do
    for j in {1..100}; do
        p=400
        s=""
        for l in $( eval echo {0..$p} ); do
            getChar
            s=$s"$return_val"
        done
        printf  "$s"
        sleep 0.01
    done
done
