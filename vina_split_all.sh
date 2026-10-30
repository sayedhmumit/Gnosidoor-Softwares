#!/bin/bash

for f in out_Ligand*.pdbqt; do
    echo "Splitting poses for $f..."
    ./vina_split --input "$f"
done
