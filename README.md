# Welcome to the IPDGC/ GP2 Hackathon: Colocalization Pipeline 
#### Devina Chetty, Shilpa Rao, Konstantin Senkevish, Prabhjyot Saini, Pau Reyes, Will Scotton, Anni Moore

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

## Methods: Coloc vs SMR vs HEIDI  
&nbsp;

* Coloc  
    1. Assumes a single causal variant  
    2. Reduced power in the presence of multiple causal variants  
* SMR  
    1. Integrates eQTL results to determine target genes of complex trait-associated GWAS loci  
    2. Derives an approximate X2-statistic for the mediating effect of the target gene expression on the phenotype  
* HEIDI (Heterogeneity) test  
    1. To distinguish between pleiotropy and linkage  
    2. Top associated cis-eQTL in linkage disequilibrium with two distinct causal variants - one affected gene expression and the other affecting trait variation  

&nbsp;
&nbsp;
