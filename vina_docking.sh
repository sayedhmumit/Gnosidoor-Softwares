#!/bin/bash

while read ligand; do
    echo "Docking $ligand..."
    ./vina --receptor receptor.pdbqt \
           --ligand "$ligand" \
           --config conf_vs.txt \
           --out "out_${ligand}" \
           --log "log_${ligand%.pdbqt}.txt"
done < Ligand.txt
