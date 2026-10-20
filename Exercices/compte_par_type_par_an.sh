#!/usr/bin/bash

entity=$1
dossiers=("2016" "2017" "2018")

for dossier in "${dossiers[@]}"
do
    echo "Annotations en $dossier :"
    cat "$dossier"/*/* | grep "$entity" | wc -l
done