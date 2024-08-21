---
title: "bioinfo"
slug: "bioinfo"
date: "2024-04-15"
enableToc: false
tags:
  - building
---

> [!NOTE]
> 🌱 來自：[[researcher]]

# bioinfo

- [[ngs.md|NGS]]
- [[ngs_tools.md|NGS tools]]
- [[genomics.md|Genomics]]
- [[bioinformatics_algorithms.md|bioinformatics algorithms]]

## Chapter 1 Sequencing and Raw Sequence Data Quality Control

- 1.1 NUCLEIC ACIDS 1
- 1.2 SEQUENCING 3
- 1.2.1 [[first-generation_sequencing.md|First-Generation Sequencing]] 3
- 1.2.2 Next-Generation Sequencing 4
- 1.2.2.1 Roche 454 Technology 5
- 1.2.2.2 Ion Torrent Technology 6
- 1.2.2.3 AB SOLiD Technology 6
- 1.2.2.4 Illumina Technology 7
- 1.2.3 Third-Generation Sequencing 8
- 1.2.3.1 PacBio Technology 9
- 1.2.3.2 Oxford Nanopore Technology 10
- 1.3 SEQUENCING DEPTH AND READ QUALITY 11
- 1.3.1 Sequencing Depth 11
- 1.3.2 Base Call Quality 11
- 1.4 [[fastq_files.md|FASTQ FILES]] 13
- 1.5 FASTQ READ QUALITY ASSESSMENT 18
- 1.5.1 Basic Statistics 23
- 1.5.2 Per Base Sequence Quality 24
- 1.5.3 Per Tile Sequence Quality 25
- 1.5.4 Per Sequence Quality Scores 28
- 1.5.5 Per Base Sequence Content 28
- 1.5.6 Per Sequence GC Content 28
- 1.5.7 Per Base N Content 30
- 1.5.8 Sequence Length Distribution 30
- 1.5.9 Sequence Duplication Levels 31
- 1.5.10 Overrepresented Sequences 31
  - [[trimming_with_trimmomatic.md|trimming with trimmomatic]]
- 1.5.11 Adapter Content 32
- 1.5.12 K-mer Content 33
- 1.6 PREPROCESSING OF THE FASTQ READS 34
- 1.7 SUMMARY 45
- REFERENCES 46
- Chapter 2 ◾ Mapping of Sequence Reads to the Reference Genomes 49
- 2.1 INTRODUCTION TO SEQUENCE MAPPING 49
- 2.2 READ MAPPING 55
- 2.2.1 Trie 56
- 2.2.2 Suffix Tree 56
- 2.2.3 Suffix Arrays 57
- 2.2.4 Burrows-Wheeler Transform 58
- 2.2.5 FM-Index 62
- 2.3 READ SEQUENCE ALIGNMENT AND ALIGNERS 63
- 2.3.1 SAM and BAM File Formats 65
- 2.3.2 Read Aligners 70
- 2.3.2.1 Burrows-Wheeler Aligner 71
- 2.3.2.2 Bowtie2 75
- 2.3.2.3 STAR 76
- 2.4 MANIPULATING ALIGNMENTS IN SAM/BAM FILES 79
- 2.4.1 [[samtools.md|samtools]] 79
- 2.4.1.1 SAM/BAM Format Conversion 79
- 2.4.1.2 Sorting Alignment 80
- 2.4.1.3 Indexing BAM File 80
- 2.4.1.4 Extracting Alignments of a Chromosome 81
- 2.4.1.5 Filtering and Counting Alignment in SAM/BAM Files 81
- 2.4.1.6 Removing Duplicate Reads 82
- 2.4.1.7 Descriptive Statistics 83
- 2.5 REFERENCE-GUIDED GENOME ASSEMBLY 83
- Chapter 3 ◾ De Novo Genome Assembly 89
- 3.1 INTRODUCTION TO DE NOVO GENOME ASSEMBLY 89
- 3.1.1 Greedy Algorithm 90
- 3.1.2 Overlap-Consensus Graphs 90
- 3.1.3 De Bruijn Graphs 91
- 3.2 EXAMPLES OF DE NOVO ASSEMBLERS 93 3.2.1 ABySS 93 3.2.2 SPAdes 97
- 3.3 GENOME ASSEMBLY QUALITY ASSESSMENT 99
- 3.3.1 Statistical Assessment for Genome Assembly 100
- 3.3.2 Evolutionary Assessment for De Novo Genome Assembly 103
- 3.4 SUMMARY 106
- Chapter 4 ◾ [[variant_discovery.md|variant discovery]] 109
- 4.1 INTRODUCTION TO GENETIC VARIATIONS 109
- 4.1.1 VCF File Format 110
- 4.1.2. Variant Calling and Analysis 113
- 4.2 VARIANT CALLING PROGRAMS 114
- 4.2.1 [[consensus-based_variant_callers.md|Consensus-Based Variant Callers]] 114
- 4.2.1.1 BCF Tools Variant Calling Pipeline 115
- 4.2.2 Haplotype-Based Variant Callers 125
- 4.2.2.1 FreeBayes Variant Calling Pipeline 127
- 4.2.2.2 GATK Variant Calling Pipeline 129
- 4.3 VISUALIZING VARIANTS 143
- 4.4 VARIANT ANNOTATION AND PRIORITIZATION 143
- 4.4.1 SIFT 145
- 4.4.2 SnpEff 148
- 4.3.3 ANNOVAR 151
- 4.3.3.1
- 4.3.3.2 ANNOVAR Input Files 156 160 161
- 4.5 SUMMARY REFERENCES
- Annotation Databases 153
- Chapter 5 ◾ RNA-Seq Data Analysis 163
- 5.1 INTRODUCTION TO RNA-SEQ 163
- 5.2 RNA-SEQ APPLICATIONS 165
- 5.3 RNA-SEQ DATA ANALYSIS WORKFLOW 166
- 5.3.1 Acquiring RNA-Seq Data 166
- 5.3.2 Read Mapping 167
- 5.3.3 Alignment Quality Assessment 171
- 5.3.4 Quantification 172
- 5.3.5 Normalization 174
- 5.3.5.1 RPKM and FPKM 174
- 5.3.5.2 Transcripts per Million 175
- 5.3.5.3 Counts per Million Mapped Reads 175
- 5.3.5.4 Trimmed Mean of M-values 175
- 5.3.5.5 Relative Expression 176
- 5.3.5.6 Upper Quartile 176
- 5.3.6 Differential Expression Analysis 176
- 5.3.7 Using EdgeR for Differential Analysis 180
- 5.3.7.1 Data Preparation 181
- 5.3.7.2 Annotation 183
- 5.3.7.3 Design Matrix 184
- 5.3.7.4 Filtering Low-Expressed Genes 185
- 5.3.7.5 Normalization 186
- 5.3.7.6 Estimating Dispersions 186
- 5.3.7.7 Exploring the Data 189
- 5.3.7.8 Model Fitting 194
- 5.3.7.9 Ontology and Pathways 202
- 5.3.8 Visualizing RNA-Seq Data 204
- 5.3.8.1 5.3.8.2 5.3.8.3 5.3.8.4
- Visualizing Distribution with Boxplots 206 Scatter Plot 207 Mean-Average Plot (MA Plot) 208 Volcano Plots 209
- 209 211
- Chapter 6 ◾ Chromatin Immunoprecipitation Sequencing 213
- 6.1 INTRODUCTION TO CHROMATIN IMMUNOPRECIPITATION 213
- 6.2 CHIP SEQUENCING 214
- 6.3 CHIP-SEQ ANALYSIS WORKFLOW 215
- 6.3.1 Downloading the Raw Data 217
- 6.3.2 Quality Control 218
- 6.3.3 ChIP-Seq and Input Read Mapping 219
- 6.3.4 ChIP-Seq Peak Calling with MACS3 223
- 6.3.5 Visualizing ChIP-Seq Enrichment in Genome Browser 226
- 6.3.6 Visualizing Peaks Distribution 229
- 6.3.6.1 ChIP-Seq Peaks’ Coverage Plot 230
- 6.3.6.2 Distribution of Peaks in Transcription Start Site (TSS)
- Regions 233
- 6.3.6.3 Profile of Peaks along Gene Regions 234
- 6.3.7 Peak Annotation 235
- 6.3.7.1 Writing Annotations to Files 237
- 6.3.8 ChIP-Seq Functional Analysis 239
- 6.3.9 Motif Discovery 243
- 6.4 SUMMARY 250 REFERENCES 251
- Chapter 7 ◾ Targeted Gene Metagenomic Data Analysis 253 7.1. INTRODUCTION TO METAGENOMICS 253 7.2 ANALYSIS WORKFLOW 254
- 7.2.1 Raw Data Preprocessing 254
- 7.2.2 Metagenomic Features 255 7.2.2.1 Clustering 255 7.2.2.2 Denoising 256
- 7.2.3 Taxonomy Assignment 258
- 7.2.3.1 Basic Local Alignment Search Tool 258
- 7.2.3.2 VSEARCH 259
- 7.2.3.3 Ribosomal Database Project 259
- 7.2.4 Construction of Phylogenetic Trees 260
- 7.2.5 Microbial Diversity Analysis 261
- 7.2.5.1 Alpha Diversity Indices 262
- 7.2.5.2 Beta Diversity 262
- 7.3 DATA ANALYSIS WITH QIIME2 263
- 7.3.1 QIIME2 Input Files 265 7.3.1.1 Importing Sequence Data 265 7.3.1.2 Metadata 269
- 7.3.2 Demultiplexing 269
- 7.3.3 Downloading and Preparing the Example Data 271
- 7.3.3.1 Downloading the Raw Data 271
- 7.3.3.2 Creating the Sample Metadata File 272
- 7.3.3.3 Importing Microbiome Yoga Data 274
- 7.3.4 Raw Data Preprocessing 275
- 7.3.4.1 Quality Assessment and Quality Control 275
- 7.3.4.2 Clustering and Denoising 278
- 7.3.5 Taxonomic Assignment with QIIME2 289
- 7.3.5.1 Using Alignment-Based Classifiers 289
- 7.3.5.2 Using Machine Learning Classifiers 291
- 7.3.6 Construction of Phylogenetic Tree 297
- 7.3.6.1 De Novo Phylogenetic Tree 297
- 7.3.6.2 Fragment-Insertion Phylogenetic Tree 298
- 7.3.7 Alpha and Beta Diversity Analysis 298
- 7.4 SUMMARY 300 REFERENCES 301

- ## Chapter 8 Shotgun Metagenomic Data Analysis 303

  [初探 PLINK 檔案格式（bed，bim，fam） - 知乎](https://zhuanlan.zhihu.com/p/128653464)
  [PLINK: Whole genome data analysis toolset](https://zzz.bwh.harvard.edu/plink/)
  [Clonal evolutionary analysis of cancer - Genevia Technologies](https://geneviatechnologies.com/blog/clonal-evolutionary-analysis-of-cancer/)

- 8.1 INTRODUCTION 303
- 8.2 SHOTGUN METAGENOMIC ANALYSIS WORKFLOW 305
- 8.2.1 Data Acquisition 305
- 8.2.2 Quality Assessment and Processing 305
- 8.2.3 Removing Host DNA Reads 306
- 8.2.3.1 Download Human Reference Genome 306
- 8.2.3.2 Mapping Reads to the Reference Genome 307
- 8.2.3.3 Converting SAM to BAM Format 307
- 8.2.3.4 Separating Metagenomic Reads in BAM Files 307
- 8.2.3.5 Creating Paired-End FASTQ Files from BAM Files 308
- 8.2.4 Assembly-Free Taxonomic Profiling 310
- 8.2.4 Assembly of Metagenomes 315
- 8.2.5 Assembly Evaluation 317
- 8.2.6 Mapping Reads to the Assemblies 318
- 8.2.7 Binning 321
- 8.2.8 Bin Evaluation 323
- 8.2.9 Prediction of Protein-Coding Region

[[ngs_articles.md|ngs_articles]]
