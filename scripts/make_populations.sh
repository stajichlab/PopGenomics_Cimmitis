#!/usr/bin/bash -l

echo -e "Populations:\n\n  All:" > population_sets.yaml
IFS=,
tail -n +2 samples.csv | while read SAMPLE STRAIN SOURCE PROJ SPECIES
do
	echo "    - $STRAIN"
done >> population_sets.yaml
