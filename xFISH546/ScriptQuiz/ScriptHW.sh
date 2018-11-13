#!/bin/bash
set -e
set -u
set -o pipefail
mkdir ./zips
mkdir ./unzip
if test "!" -d ./ToUpload
then
	mkdir ./ToUpload
else
	echo "ToUpload exists"
fi
curl eagle.fish.washington.edu/fish546/jenny/Stack105700.Naso%20unicornis.zip > ./zips/Stack1.zip
unzip ./zips/Stack1.zip -d ./unzip/
if test -f ./unzip/Info.txt
then
    dos2unix ./unzip/Info.txt
    Sorce=$(awk '/^Sorce: / {print $2}' ./unzip/Info.txt) 
    CatNum=$(awk '/^SorceID: / {print $2}' ./unzip/Info.txt)
    Source=${Sorce%$'\r'}
    Number=${CatNum%$'\r'}	
    echo $Source
    echo $Number
else
    echo "Info.txt not found"
fi
if [[ $Sorce == "UW" ]]
then
    Museum="UWFC"
    Collection="UWFC"
    echo $Museum
    echo $Collection
else
    echo "Not UWFC"
fi
name="${Museum}-${Collection}-${Number}"
jpgname="${name}_"
mv ./unzip/*.log ./ToUpload/"${name}.log"
unzip ./unzip/Stack.zip -d ./unzip/tmp
for f in unzip/tmp/*.jpg ; do mv $f ${f//Image/$jpgname} ; done
zip -r "${name}.zip" unzip/tmp 
mv "${name}.zip" ToUpload/
rm -r zips/
rm -r unzip/