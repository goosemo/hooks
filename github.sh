#!/bin/bash

echo $HG_ARGS
echo $HG_PATS
#post-push
if [ $HG_PATS = "bitbucket" ]
then 
    hg push github
fi
