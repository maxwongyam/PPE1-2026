#!/usr/bin/bash

if [ $# -ne 2 ]; then
    echo "Erreur : Le script attend deux arguments (Entités / ANNÉES). Fin d'éxécution." >&2
    exit 1
fi

entity=$1
year=$2

if [ ! -d "$year" ]; then
    echo "Erreur : Le dossier '$year' n'existe pas." >&2
    exit 1
fi

if ! cat "$year"/*/* | grep -q "$entity"; then
    echo "L'entité donnée est inexistante ou mal orthographiée." >&2
    exit 1
fi

cat "$year"/*/* | grep "$entity" | wc -l
