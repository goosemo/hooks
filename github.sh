#!/bin/bash

#post-push
if [[ $HG_ARGS =~ "push bitbucket" ]]
then 
    hg push github
fi
