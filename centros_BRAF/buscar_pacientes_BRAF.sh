#!/bin/bash

# Buscar pacientes con la mutación BRAF V600E
grep -h -B 1 "CTACAGAGAAATC" /tema2/data/centros_BRAF/*.fasta | grep -v '^--$' > candidatos.fasta

# Contar los pacientes encontrados
echo "Pacientes candidatos:"
grep -c '^>' candidatos.fasta
