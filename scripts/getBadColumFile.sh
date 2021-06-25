#!/usr/bin/env bash


sci=$1
bcfPath=$2

# Should these be switched to nxb file dates? They're newer than table

lowerCut=2006-10-01
#lowerCut=2008-09-17
# Between; scion
upperCut=2011-06-01
#upperCut=2011-06-02
# After; sci6

#caldb/data/suzaku/xis/bcf/

npmDate=20160128
#ae_xi1_npmsci6_20160128.fits
#ae_xi1_npmsciof_20160128.fits
#ae_xi1_npmscion_20160128.fits

nxbonDate=20080917
nxbofDate=20110602
nxb6Date=20160128

#ae_xi1_nxbscion_20110602.fits
#ae_xi1_nxbsciof_20080917.fits
#ae_xi1_nxbsci6_20160128.fits

#ae_xi1_nxbsci6_20160128_rejectnpm.fits
#ae_xi1_nxbscion_20110602_rejectnpm.fits

if [[ "$obsDate" < "$lowerCut" ]]
then
	# observation was before 2006-10-01
	# use sciof
	sci=of
elif [[ "$obsDate" < "$upperCut" ]]
then
	# observation was between 2006-10-01 and 2011-06-01
	# use scion
	sci=on
else
	# observation was after 2011-06-01
	# use sci6
	sci=6
fi

npmFile=ae_xi1_npmsci${sci}_${npmDate}.fits

# to return reject file
#? https://stackoverflow.com/questions/16338086/bash-return-value-from-subscript-to-parent-script


#check if reject file exists

###### Can't echo if found npm because returns echo output, doesn't print
#if [[ -f $npmFile ]]
#then
#	echo "nxb_rejectnpm file already exists: $rejectFile"
#
#else
#	echo "No bad colum file (npm) found"
#fi

echo "$bcfPath/$npmFile"
