#!/usr/local/bin/zsh


RED='\033[1;31m'
BLUE='\033[0;34m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
PURPLE='\033[0;35m'
PINK='\033[1;35m'
NC='\033[0m' # No Color

colours=($RED $BLUE $GREEN $YELLOW $PURPLE $PINK)
#colours=($RED $GREEN $YELLOW $PURPLE $PINK)
#spaces=`echo $colours | wc -w`
spaces=`wc -w <<< "$colours"`
spaces="$((spaces+1))"
function getChar(){
    return_val="REE"
    c='a'
    c='\u2588'
    j=0
    tmp="$((RANDOM%5))"
    for i in "${colours[@]}"; do
        #echo $i-$j;
        j="$((j+1))"
        #    continue
        #echo $j
        if [ $tmp -lt $j ]; then
            return_val="${i}$c${NC}"
            #echo "MEEP $return_val"
            break
        fi
    done
    # return 0
    # exit
    #if [ $tmp -lt 0 ]; then
        #    return_val=" "
        #else if [ $tmp -lt 2 ]; then
            #     return_val="${YELLOW}$c${NC}"
            #     return_val="${PURPLE}$c${NC}"
            # else if [ $tmp -lt 3 ]; then
                #     return_val="${PURPLE}$c${NC}"
                # else if [ $tmp -lt 4 ]; then
                    #     return_val="${GREEN}$c${NC}"
                    #     #return_val="${PURPLE}$c${NC}"
                    # else if [ $tmp -lt 5 ]; then
                        #     return_val="${PINK}$c${NC}"
                        # else
                            #     return_val="${BLUE}$c${NC}"
                            #     return_val="${YELLOW}$c${NC}"
                            #     return_val="${PINK}$c${NC}"
                            # fi
                            # fi
                            # fi
                            # fi
                            # fi
                        }

                    while true; do
                        for j in {1..100}; do
                            p=400
                            s=""
                            for l in $( eval echo {0..$p} ); do
                                getChar
                                #echo "ree $return_val"
                                s=$s"$return_val"
                            done
                            printf  "$s"
                            #sleep 0.01
                        done
                    done
