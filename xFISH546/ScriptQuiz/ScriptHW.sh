#!/bin/bash
set -e
set -u
set -o pipefail
mkdir ./zips
mkdir ./unzip
mkdir ./unzip/Stack1
curl eagle.fish.washington.edu/fish546/jenny/Stack105700.Naso%20unicornis.zip > ./zips/Stack1.zip
unzip ./zips/Stack1.zip -d ./unzip/Stack1/
if test -f ./unzip/Stack1/Info.txt
then
    dos2unix ./unzip/Stack1/Info.txt
    Sorce=$(awk '/^Sorce: / {print $2}' ./unzip/Stack1/Info.txt) 
    CatNum=$(awk '/^SorceID: / {print $2}' ./unzip/Stack1/Info.txt)
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
mv ./unzip/Stack1/*.log ./ToUpload/"${name}.log"
mv ./unzip/Stack.zip ./ToUpload/"${name}.zip"