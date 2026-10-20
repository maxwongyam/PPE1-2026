#!/usr/bin/bash

entity=$1
year=$2

cat "$year"/*/* | grep "$entity" | wc -l
