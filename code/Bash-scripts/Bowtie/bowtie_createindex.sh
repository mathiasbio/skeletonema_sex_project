#!/bin/bash
#$ -cwd
#$ -q high_mem
#$ -o /nobackup/data5/skeletonema_sex_project/test/assembly-test/paired_end_assembly/bowtie_index/stdout_bowtieindex.txt
#$ -e /nobackup/data5/skeletonema_sex_project/test/assembly-test/paired_end_assembly/bowtie_index/stderr_bowtieindex.txt
#$ -j y
#$ -S /bin/bash
wait
ASSEMBLY=/nobackup/data5/skeletonema_sex_project/test/assembly-test/paired_end_assembly/Trinity.fasta
wait
bowtie2-build $ASSEMBLY pairedend-assembly-bowtie2-ref 
wait
echo "Done with script" 
date
