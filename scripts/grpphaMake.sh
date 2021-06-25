#!/usr/bin/env bash

outFile=$1
xspecPath=$2
inRelativePath=$3
histFile=$4
arfFile=$5
rmfFile=$6
nxbFile=$7

irp=$inRelativePath


#GRPPHA can be  run  in  non-interactive  mode  by  separating commands  with  an  ampersand "&".

pushd $xspecPath

pwd

echo ./$irp/${histFile}

grppha infile=./$irp/${histFile} outfile=${outFile} clobber=yes comm="chkey ANCRFILE ./$irp/$arfFile & chkey RESPFILE ./$irp/$rmfFile & chkey BACKFILE ./$irp/$nxbFile & group min 25 & exit"

grppha infile=${outFile} outfile=${outFile} clobber=yes comm="show all & exit"

popd
