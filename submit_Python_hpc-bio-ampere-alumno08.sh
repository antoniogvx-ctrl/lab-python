#!/bin/bash
#SBACTH --chdir=./lab-python
#SBATCH --job-name=python_reduc    
#SBATCH --output=reduc_%j.out      
#SBATCH -p hpc-bio-ampere    
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1

module load anaconda/2025.06

time ipython -c "%run reduc-operation-alumno08.ipynb $1"

module unload anaconda/2025.06
