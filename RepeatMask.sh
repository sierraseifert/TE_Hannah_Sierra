#!/bin/bash

#SBATCH --mem-per-cpu=4G  # adjust as needed
#SBATCH -c 2 # number of threads per process
#SBATCH --output=log/22RepeatMask.out
#SBATCH --error=log/22RepeatMask.err
#SBATCH --partition=scavenger
#SBATCH --mail-type=ALL
#SBATCH --mail-user=kania.hannah@duke.edu

# Load RepeatMasker
source /opt/apps/rhel8/RepeatModeler/miniconda3/etc/profile.d/conda.sh
conda activate base
PATH=/opt/apps/rhel8/RepeatModeler/RepeatModeler-2.0.4:/opt/apps/rhel8/RepeatModeler/RepeatMasker:$PATH
# Run RepeatMasker on Mic_Mur Chromosome 22
RepeatMasker -s -pa 4 -a -species primate ncbi_dataset/data/GCF_000165445.2/chr22.fna



#/work/hpk4/Mic_mur_RepeatMask
#output files are in the genome file in ncbi-datasets folder