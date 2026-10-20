#!/usr/bin/bash

year=${1:-*}
month=${2:-*}
length=$3

cat $year/$month/* | grep "Location" | cut -f3 | sort | uniq -c | sort | tail -n $length