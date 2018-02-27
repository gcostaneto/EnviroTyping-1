#!/bin/bash
#
#
#SBATCH -J hyb_wks3-5_5000iters
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -p normal
#SBATCH -t 48:00:00
#SBATCH -A Envriotype
#SBATCH -o slurm.%N.%j.out
#------------------------------------------------------
mkdir output
auth-tokens-refresh
files-get -N data.csv dhbrand/Premium/hybrid_by_weeksSincePlanted_cleaned_weather.csv
remora Rscript --vanilla --verbose ./job.R > output/output.Rout
