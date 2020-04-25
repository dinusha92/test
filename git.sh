#!bin/sh

BRANCH="testbranch"
OUTPUT=$(git describe --abbrev=0 --tags)
BUMP="1"

if [ "$OUTPUT" = "" ]; then
    echo "not tag avaialble"
    newtag="$BRANCH-v1"
    git tag $newtag
    git push origin $newtag
else
    echo "tag available"
    A="$( echo "$OUTPUT" | cut -d'v' -f2)"
    echo "$A"
    result=$(echo "$A + $BUMP" | bc)
    newtag="$BRANCH-v$result"
    git tag $newtag
    git push origin $newtag
fi
