#!/usr/bin/bash

if [ $# -ne 1 ]; then
    echo "Erreur : Le script attend un argument (Entités). Fin d'éxécution." >&2
    exit 1
fi

entity=$1
dossiers=("2016" "2017" "2018")

if ! cat {2016,2017,2018}/*/* | grep -q "$entity"; then
    echo "L'entité donnée est inexistante ou mal orthographiée." >&2
    exit 1
fi

for dossier in "${dossiers[@]}"
do
    echo "Annotations en $dossier :"
    cat "$dossier"/*/* | grep "$entity" | wc -l
done