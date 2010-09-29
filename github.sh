#!/bin/bash

# This script takes in the args that a hg push is given and checks fo the paths
# that I've defined in my hg repos for either a push to bitbucket or github,
# and then does the other, so that regardless of which of these sites I push to
# the other also get pushed to.

if [[ $HG_ARGS = "push bitbucket" ]]
then 
    #post-push to bitbucket
    echo 
    hg push github --quiet
    echo 

elif [[ $HG_ARGS = "push github" ]]
then 
    #post-push to github
    hg push bitbucket --quiet
fi
