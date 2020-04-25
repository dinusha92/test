#!/bin/sh

#OUTPUT="$(kubectl get api s -o json | jq '.metadata.name' -r)"
API="$1"
git status

TAG="sample"
git tag $TAG

git push origin $TAG


OUTPUT="$(kubectl get api $API -o json | jq '.metadata.name' -r)"
echo "$OUTPUT"
if [ "$OUTPUT" = "$API" ]; then
    printf 'some_command succeded, the output was «%s»\n' "$OUTPUT"
    apictl update api -n $API --from-file=testintBranch 	
else
    printf 'API does not exist in the system.the output was' "$OUTPUT"
    apictl add api -n $API --from-file=testintBranch
fi
