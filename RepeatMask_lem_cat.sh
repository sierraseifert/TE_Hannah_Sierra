#!/bin/bash

#SBATCH -c 2 # number of threads per process
#SBATCH --output=log/lem_cat_RepeatMask.out
#SBATCH --error=log/lem_cat_RepeatMask.err
#SBATCH --partition=scavenger
#SBATCH --mail-type=ALL
#SBATCH --mail-user=kania.hannah@duke.edu
#SBATCH --ntasks-per-node=36
#SBATCH --time=100:00:00

# Load RepeatMasker
source /opt/apps/rhel8/RepeatModeler/miniconda3/etc/profile.d/conda.sh
conda activate base
PATH=/opt/apps/rhel8/RepeatModeler/RepeatModeler-2.0.4:/opt/apps/rhel8/RepeatModeler/RepeatMasker:$PATH

# Run RepeatMasker on Mic_Mur Chromosome 22
RepeatMasker -s -pa 36 -a -species primate ncbi_dataset/data/GCA_020740605.1/GCA_020740605.1_mLemCat1.pri_genomic.fna
