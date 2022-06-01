#!/bin/bash

declare url="$1" path="$2" lang="$3" 
declare topic="${path%%/*}" 
if [[ -z $lang ]]
then
	print -u2 "Please specify language"
else
	/usr/bin/git submodule add "$url" "$path" && /usr/bin/git commit -m "Add ${topic} tutorial (${lang})" || print -u2 "command git operation failed"
fi
exit $?
