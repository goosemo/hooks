#!/bin/bash

#post-push
if [ $HG_PATS = "bitbucket"]
then 
    hg push github
fi
