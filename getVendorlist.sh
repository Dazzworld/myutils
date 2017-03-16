#!/bin/bash

PWD=`pwd`

function getdir(){
    echo $1
    for file in $1/*
    do
    if test -f $file
    then
        echo $file
        arr=(${arr[*]} $file)
    else
        getdir $file
    fi
    done
}

if [ "$1" == "" ]; then
    getdir $PWD
else
    getdir $1
fi


