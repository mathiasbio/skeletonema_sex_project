#!/bin/bash
#$ -cwd
#$ -q node0
#$ -o /nobackup/data5/skeletonema_sex_project/differential-expression-analysis/blast_searches/59athal+scere-meiosisgenes/ncbi-results/stdout_BLASTX.txt
#$ -e /nobackup/data5/skeletonema_sex_project/differential-expression-analysis/blast_searches/59athal+scere-meiosisgenes/ncbi-results/stderr_BLASTX.txt
#$ -j y
#$ -S /bin/bash
wait
ANALYSISLOC=/nobackup/data5/skeletonema_sex_project/differential-expression-analysis/blast_searches/59athal+scere-meiosisgenes/ncbi-results
wait
export BLASTDB=/state/partition1/db/ncbi/nr/
wait
blastx -db nr -query ${ANALYSISLOC}/contigsforreciprocblast.txt -evalue 0.001 -max_target_seqs 5 -word_size 6 -gapopen 11 -gapextend 1 -outfmt 0 -show_gis -matrix BLOSUM62 -out $ANALYSISLOC/ncbi_results_outfmt0.txt -num_threads 20
wait
blastx -db nr -query ${ANALYSISLOC}/contigsforreciprocblast.txt -evalue 0.001 -max_target_seqs 5 -word_size 6 -gapopen 11 -gapextend 1 -outfmt 7 -show_gis -matrix BLOSUM62 -out $ANALYSISLOC/ncbi_results_outfmt7.txt -num_threads 20
wait
echo "Done with script" 
date
