#!/bin/bash
#$ -cwd
#$ -q high_mem
#$ -o /nobackup/data5/skeletonema_sex_project/differential-expression-analysis/transcript-abundance-est/bowtie2-mapping1/stdout_RSEM_prepref.txt
#$ -e /nobackup/data5/skeletonema_sex_project/differential-expression-analysis/transcript-abundance-est/bowtie2-mapping1/stderr_RSEM_prepref.txt
#$ -j y
#$ -S /bin/bash
wait
ASSEMBLY=/nobackup/data5/skeletonema_sex_project/differential-expression-analysis/transcriptome/skeletonema-marinoi_transcriptome_unannotated.fasta
OUTPUT=/nobackup/data5/skeletonema_sex_project/differential-expression-analysis/transcript-abundance-est/bowtie2-mapping1
wait 
/usr/local/bin/trinityrnaseq_r20140717/util/align_and_estimate_abundance.pl --transcripts $ASSEMBLY --est_method RSEM --aln_method bowtie2 --prep_reference --output_dir $OUTPUT 
wait
echo "Done with script" 
date

