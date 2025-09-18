#!/bin/bash
# Script sencillo para convertir DNA a mRNA
# Uso: ./dna_to_rna.sh "ATGCGTAC"
dna_seq=$1
# Convertir a mayúsculas
dna_seq=$(echo "$dna_seq" | tr '[:lower:]' '[:upper:]')
# DNA -> RNA (T -> U)
rna_seq=$(echo "$dna_seq" | tr 'T' 'U')
# Complementaria
comp_seq=$(echo "$dna_seq" | tr 'ATCG' 'TAGC')
# Complementaria inversa
rev_comp=$(echo "$comp_seq" | rev)
echo "DNA:                $dna_seq"
echo "mRNA:               $rna_seq"
echo "Complementaria:     $comp_seq"
echo "Comp. inversa:      $rev_comp"
