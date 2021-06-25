#!/usr/bin/env bash

dyePath=$1
inFile=$2
outFile=$3
attFilePath=$4

pushd $dyePath

xisexpmapgen $outFile $inFile $attFilePath

popd
