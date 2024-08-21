---
title: "trimming_with_trimmomatic"
slug: "trimmingwithtrimmomatic"
date: "2024-05-06"
enableToc: false
tags:
  - building
---

> [!info]
>
> 🌱 來自：[[bioinfo]]

# trimming_with_trimmomatic

### Trimmomatic

[Trimmomatic](https://http://www.usadellab.org/cms/?page=trimmomatic) is a flexible read trimming tool for Illumina NGS data.

#### Generic Trimmomatic command

> _java -jar trimmomatic-0.39.jar PE inputforward.fq.gz inputreverse.fq.gz outputforwardpaired.fq.gz outputforwardunpaired.fq.gz outputreversepaired.fq.gz outputreverseunpaired.fq.gz ILLUMINACLIP:TruSeq3-PE.fa:2:30:10:2:keepBothReads LEADING:3 TRAILING:3 MINLEN:36_

<br>

### Created a bash script for running trimmomatic on multiple files at the same time

This scripts looks for files with "_\_R1.fastq.gz" in their name, and applies trimmomaic on them, and their paired "_\_R2.fastq.gz" files in the same directory

```bash
#!/bin/bash
# arg1: number of threads
# to run:
# chmod +x trim.sh
# <path>/trim.sh <number of threads>
# Example: ./trim.sh 40

for f in *_R1.fastq.gz # for each sample

do
    n=${f%%_R1.fastq.gz} # strip part of file name
    trimmomatic PE -threads $1 ${n}_R1.fastq.gz  ${n}_R2.fastq.gz \
    ${n}_R1_trimmed.fastq.gz ${n}_R1_unpaired.fastq.gz ${n}_R2_trimmed.fastq.gz \
    ${n}_R2_unpaired.fastq.gz ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 \
    LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

done
```

#### Transferred BASH script from local computer to cloud instance

```
scp -C /Users/cm/JPL_Google_Drive/scripts/trim.sh cmicro@149.165.171.66:/home/cmicro/scripts
```

<br>

## On the cloud instance

#### Create a directory for Trimming

```
mkdir trim
cd trim
```

#### Create symbolic links to FASTQ files

(Assuming all fastq files are in the fastqs_backup directory)

```
ln -s /home/cmicro/fastqs_backup/*.fastq.gz .
```

<br>

### Create a Conda environment & install Trimmomatic

```
conda create -y -n trim trimmomatic
```

Copy TruSeq adapters to local directory so Trimmomatic finds them easily.

```
cp /opt/miniconda3/pkgs/trimmomatic-*/share/trimmomatic-*/adapters/TruSeq3-PE.fa .
```

#### Activate Trimmomatic Conda environment

```
conda activate trim
```

#### Make BASH script executable & run script (with)

```
chmod +x trim.sh
```

#### Running BASH script for Trimmomatic using 40 threads

```
/home/cmicro/scripts/trim.sh 40
```

# Move trimmed FASTQ files to specific directory

```
mkdir trimmed_fastqs
find . -type f -name "*trimmed*" -exec mv '{}' trimmed_fastqs/ \;
```

Command line output is below:

> TrimmomaticPE: Started with arguments:
> -threads 42 sample1_R1.fastq.gz sample1_R2.fastq.gz sample1_R1_trimmed.fastq.gz sample1_R1_unpaired.fastq.gz sample1_R2_trimmed.fastq.gz sample1_R2_unpaired.fastq.gz ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
> Using PrefixPair: 'TACACTCTTTCCCTACACGACGCTCTTCCGATCT' and 'GTGACTGGAGTTCAGACGTGTGCTCTTCCGATCT'
> ILLUMINACLIP: Using 1 prefix pairs, 0 forward/reverse sequences, 0 forward only sequences, 0 reverse only sequences
> Quality encoding detected as phred33
> Input Read Pairs: 5342751 Both Surviving: 4283096 (80.17%) Forward Only Surviving: 1020644 (19.10%) Reverse Only Surviving: 15211 (0.28%) Dropped: 23800 (0.45%)
> TrimmomaticPE: Completed successfully
> TrimmomaticPE: Started with arguments:
> -threads 42 sample2_R1.fastq.gz sample2_R2.fastq.gz sample2_R1_trimmed.fastq.gz sample2_R1_unpaired.fastq.gz sample2_R2_trimmed.fastq.gz sample2_R2_unpaired.fastq.gz ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
> Using PrefixPair: 'TACACTCTTTCCCTACACGACGCTCTTCCGATCT' and 'GTGACTGGAGTTCAGACGTGTGCTCTTCCGATCT'
> ILLUMINACLIP: Using 1 prefix pairs, 0 forward/reverse sequences, 0 forward only sequences, 0 reverse only sequences
> Quality encoding detected as phred33
> Input Read Pairs: 5528625 Both Surviving: 4327888 (78.28%) Forward Only Surviving: 1156093 (20.91%) Reverse Only Surviving: 17389 (0.31%) Dropped: 27255 (0.49%)
> TrimmomaticPE: Completed successfully
> TrimmomaticPE: Started with arguments:
> -threads 42 sample3_R1.fastq.gz sample3_R2.fastq.gz sample3_R1_trimmed.fastq.gz sample3_R1_unpaired.fastq.gz sample3_R2_trimmed.fastq.gz sample3_R2_unpaired.fastq.gz ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
> Using PrefixPair: 'TACACTCTTTCCCTACACGACGCTCTTCCGATCT' and 'GTGACTGGAGTTCAGACGTGTGCTCTTCCGATCT'
> ILLUMINACLIP: Using 1 prefix pairs, 0 forward/reverse sequences, 0 forward only sequences, 0 reverse only sequences
> Quality encoding detected as phred33
> Input Read Pairs: 5342751 Both Surviving: 4283096 (80.17%) Forward Only Surviving: 1020644 (19.10%) Reverse Only Surviving: 15211 (0.28%) Dropped: 23800 (0.45%)
> TrimmomaticPE: Completed successfully
> TrimmomaticPE: Started with arguments:
> -threads 42 sample4_R1.fastq.gz sample4_R2.fastq.gz sample4_R1_trimmed.fastq.gz sample4_R1_unpaired.fastq.gz sample4_R2_trimmed.fastq.gz sample4_R2_unpaired.fastq.gz ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
> Using PrefixPair: 'TACACTCTTTCCCTACACGACGCTCTTCCGATCT' and 'GTGACTGGAGTTCAGACGTGTGCTCTTCCGATCT'
> ILLUMINACLIP: Using 1 prefix pairs, 0 forward/reverse sequences, 0 forward only sequences, 0 reverse only sequences
> Quality encoding detected as phred33
> Input Read Pairs: 6718423 Both Surviving: 5270348 (78.45%) Forward Only Surviving: 1386864 (20.64%) Reverse Only Surviving: 22301 (0.33%) Dropped: 38910 (0.58%)
> TrimmomaticPE: Completed successfully
