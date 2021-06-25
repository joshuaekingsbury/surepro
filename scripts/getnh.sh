

# In xspec, use:
# syscall ./getnh.sh

# To get nH info without leaving xspec

files=$( ls {*.xsl,*.fits} | head -1 )

obsRA=$(gethead RA_PNT ${files})
obsDEC=$(gethead DEC_PNT ${files})
obsID=$(gethead OBS_ID ${files})

echo
echo "ObsID: $obsID"
echo "RA: $obsRA"
echo "DEC: $obsDEC"

nhWeightedString=$( nh 2000 $obsRA $obsDEC | tail -1 )
nhVal=${nhWeightedString##*' '}


echo
echo "nH Column Density retrieved from: $files"
echo
echo "nH Column Density: ${nhVal}"
