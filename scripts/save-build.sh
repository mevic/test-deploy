#!/bin/bash
# test

_DATABAGDIR=$1
_DATABAG=$2
_BKP=$3
_TIMESTAMP=`date +"%m-%d-%y_%H%M%S_%z"`
_BKPFOLDER=$4

knife data bag show $_DATABAGDIR $_DATABAG --format json >> $_BKP
cp $_BKP ${_BKPFOLDER}/${_DATABAGDIR}_${_DATABAG}_${_TIMESTAMP}

