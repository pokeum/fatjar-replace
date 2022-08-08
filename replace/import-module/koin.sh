#!/usr/bin/bash

fatjar=$1
koin=$2

fatjar_koin=$fatjar/sample/koin

if [ -d $koin/koin-projects/koin-core ]
then 
    mv $koin/koin-projects/koin-core $fatjar_koin
elif [ -d $koin/core/koin-core ]
then
    mv $koin/core/koin-core $fatjar_koin
elif [ -d $koin/koin-core ]
then
    mv $koin/koin-core $fatjar_koin
else
    echo "needs update"
fi
