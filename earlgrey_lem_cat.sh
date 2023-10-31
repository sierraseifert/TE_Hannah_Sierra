#!/bin/bash

#SBATCH --mem-per-cpu=4G  # adjust as needed
#SBATCH -c 8 # number of threads per process
#SBATCH --output=log/###.out #rename the ### for your genome
#SBATCH --error=log/###.err
#SBATCH --partition=scavenger
#SBATCH --mail-type=ALL
#SBATCH --mail-user=###@duke.edu #fill in ### with your email address

# Load earlgrey
source /hpc/home/hpk4/miniconda3/etc/profile.d/conda.sh #change to your conda (should be /hpc/home/netID/miniconda3/etc/profile.d/conda.sh)
conda activate earlgrey
# Run earlGrey
earlGrey -g ncbi_dataset/data/GCA_020740605.1/GCA_020740605.1_mLemCat1.pri_genomic.fna -s lemurCatta -o earlGrey -t 8

# for the flags, -s is just the name of the output files, so for whichever species you do type that, -o is the output directory earlgrey will make for you
# -g is the genome, so use the same oath that you used for RepeatMasker

#submit the script from the same folder as you submit the RepeatMasker script!
