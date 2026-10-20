#!/usr/bin/bash

if [ $# -ne 3 ]; then
    echo "Erreur : Le script attend trois argument (Années ou vide / Mois ou vide / Longueur classement). Fin d'éxécution." >&2
    exit 1
fi

year=${1:-*}
month=${2:-*}
length=$3

if [ ! -d $year/$month ]; then
    echo "Erreur : Le(s) dossier(s) $year/$month n'existe(nt) pas." >&2
    exit 1
fi

cat $year/$month/* | grep "Location" | cut -f3 | sort | uniq -c | sort | tail -n $length