#!/usr/local/bin/zsh

function getChar(){
        RED='\033[1;31m'
        BLUE='\033[0;34m'
        GREEN='\033[0;32m'
        YELLOW='\033[1;33m'
        PURPLE='\033[0;35m'
        PINK='\033[1;35m'
        NC='\033[0m' # No Color
    return_val="REE"
    c='a'
    c='\u2588'
            if [ "$((RANDOM%5))" -lt 0 ]; then
                return_val=" "
            else if [ "$((RANDOM%5))" -lt 2 ]; then
                return_val="${YELLOW}$c${NC}"
                return_val="${PURPLE}$c${NC}"
            else if [ "$((RANDOM%5))" -lt 2 ]; then
                return_val="${PURPLE}$c${NC}"
            else if [ "$((RANDOM%5))" -lt 2 ]; then
                return_val="${GREEN}$c${NC}"
                return_val="${PURPLE}$c${NC}"
            else if [ "$((RANDOM%5))" -lt 2 ]; then
                return_val="${PINK}$c${NC}"
            else
               return_val="${BLUE}$c${NC}"
               return_val="${YELLOW}$c${NC}"
                return_val="${PINK}$c${NC}"
            fi
            fi
            fi
            fi
            fi
}

#for i in {1..10000}; do
while true; do
    for j in {1..100}; do
        #p="$((RANDOM%100))"
        p=1000
        s=""
        #if [ $p  -gt 100 ]; then echo "ererer"; fi
        for l in $( eval echo {0..$p} ); do
            #echo $l

            getChar
            #echo ""
            #echo "REE $return_val"
            #exit
            s=$s"$return_val"

            continue;
            if [ "$((RANDOM%3))" -lt 1 ]; then
                s=$s" "
            else if [ "$((RANDOM%5))" -lt 2 ]; then
                s=$s"${RED}a${NC}"
                #s=$s"${RED}\u2588\u2588${NC}"
            else if [ "$((RANDOM%5))" -lt 2 ]; then
                s=$s"${PURPLE}b${NC}"
                #s=$s"${PURPLE}\u2588\u2588${NC}"
            else if [ "$((RANDOM%5))" -lt 2 ]; then
                s=$s"${GREEN}b${NC}"
                #s=$s"${GREEN}\u2588\u2588${NC}"
            else
                s=$s"${BLUE}c${NC}"
                #s=$s"${BLUE}""\u2588\u2588""${NC}"
            fi
            fi
            fi
            fi
            #s=$s`shuf -zer -n1  {A..Z} {a..z} {0..9}`
            #s=$s`echo $RANDOM | tr '[0-9]' '[a-z]'`
        done
        #echo -e "$s" # "asdsadasd"
        # Wrapping is pretty cool
        #printf  "\r$s" # "asdsadasd"
        printf  "$s" # "asdsadasd"
        sleep 0.01
    done
done
