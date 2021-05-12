# IPDGC/GP2 Hackathon 2021: Colocalization Pipeline 
#### Devina Chetty, Shilpa Rao, Konstantin Senkevich, Prabhjyot Saini, Pau Reyes P, Will Scotton, Anni Moore

&nbsp;  

## What is _colocalization_?  
**Colocalization** is an analysis to test if the **effect size of a SNP** on the phenotype is mediated by **gene expression**.  
This tool can be used to prioritize genes underlying **GWAS hits**  

&nbsp;  
&nbsp;  
&nbsp;  

![image](https://user-images.githubusercontent.com/84042456/117986308-cbe19b00-b339-11eb-8f90-3f33959f0a12.png)  
&nbsp;  
![image](https://user-images.githubusercontent.com/84042456/117987145-82458000-b33a-11eb-99d4-1e3573a14276.png)  

&nbsp;
&nbsp;

## Methods: Coloc vs SMR vs eQTpLot  
&nbsp;

* Coloc  
    1. Assumes a single causal variant  
    2. Reduced power in the presence of multiple causal variants  
* SMR  
    1. Integrates eQTL results to determine target genes of complex trait-associated GWAS loci  
    2. Derives an approximate X2-statistic for the mediating effect of the target gene expression on the phenotype  
* eQTpLot
    1. Visualization of colocalization between eQTL and GWAS data  
    2. Comprehensive plots of colocalization between GWAS and eQTL signals and correlation between GWAS and eQTL p-values
    It provides visual information of effect size, direction of the effect, and distinguishes between congrous and incongrous effects

![image](https://www.biorxiv.org/content/biorxiv/early/2021/02/15/2020.08.26.268268/F1.large.jpg)

&nbsp;
&nbsp;

## Links to tools we used
* 1.  https://www.eqtlgen.org/  
* 2. https://pubmed.ncbi.nlm.nih.gov/31701892/ (Identification of novel risk loci, causal insights, and heritable risk for Parkinson's disease: a meta-analysis of genome-wide association studies - PubMed)  
* 3. https://github.com/chr1swallace/coloc (Repo for the R package coloc)  

&nbsp;
&nbsp;

## Problems so far

* 1. Couldnt load cloud environment (error)
* 2. CPU issues where kernel error would generate if CPU wasnt high enough, but when increased we would not have the running cloud environment
