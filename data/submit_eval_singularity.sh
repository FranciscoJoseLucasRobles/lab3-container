#!/bin/bash
#
#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno09/practica-HPC/lab3-container/data
#SBATCH -J lab3-sing
#SBATCH --cpus-per-task=26
#SBATCH --mail-type=NONE
#SBATCH --mail-user=yourmail@um.es

module load singularity

echo "TIEMPOS EJECUCIÓN EMPLEANDO SINGULARITY"
echo --------------------------------------------
echo "Tiempo de ejecución 13 k-mers con python"
echo --------------------------------------------
time ../singularity/python_latest.sif python ./k-mer13.py
echo
echo --------------------------------------------
echo "Tiempo de ejecución 14 k-mers con python"
echo --------------------------------------------
time ../singularity/python_latest.sif python ./k-mer14.py
echo
echo ---------------------------------------
echo "Tiempo de ejecución 13 k-mers con C++"
echo ---------------------------------------
time ../singularity/python_latest.sif ./k-mer13
echo
echo ---------------------------------------
echo "Tiempo de ejecución 14 k-mers con C++"
echo ---------------------------------------
time ../singularity/python_latest.sif ./k-mer14
echo
