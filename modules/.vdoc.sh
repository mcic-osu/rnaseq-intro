
















































































fastqc <fastq-file>






fastqc --outdir=<output-dir> <fastq-file>







fastqc --outdir=results/fastqc data/fastq/ASPC1_A178V_R1.fastq.gz







































  module load fastqc/0.11.8
  ```




  #SBATCH --account=PAS0471
  #SBATCH --output=slurm-fastqc-%j.out






















  mkdir newdir1/newdir2
  #> mkdir: cannot create directory ‘newdir1/newdir2’: No such file or directory



  mkdir -p newdir1/newdir2    # This successfully creates both directories






  mkdir newdir1/newdir2
  #> mkdir: cannot create directory ‘newdir1/newdir2’: File exists



  mkdir -p newdir1/newdir2   # This does nothing since the dirs already exist
  ```







#!/bin/bash
#SBATCH --account=PAS2250
#SBATCH --output=slurm-fastqc-%j.out
  
# Strict Bash settings
set -euo pipefail

# Load the OSC module for FastQC
module load fastqc

# Copy the placeholder variables
input_file="$1"
output_dir="$2" 

# Initial reporting
echo "# Starting script fastqc.ch"
date
echo "# Input FASTQ file:   $input_file"
echo "# Output dir:         $output_dir"
echo

# Create the output dir if needed
mkdir -p "$output_dir"

# Run FastQC
fastqc --outdir="$output_dir" "$input_file"

# Final reporting
echo
echo "# Listing the output files:"
ls -lh "$output_dir"

echo
echo "# Done with script fastqc.sh"
date

# (Don't run this in your terminal, but copy it into a .sh text file)















































sbatch scripts/fastqc.sh data/fastq/ASPC1_A178V_R1.fastq.gz results/fastqc








































cat slurm-fastqc-23666218.out    # You'll have a different number in the file name






















































































































for fastq_file in data/fastq/*fastq.gz; do
    sbatch scripts/fastqc.sh "$fastq_file" results/fastqc
done
























  tail slurm-fastqc*
  ```








