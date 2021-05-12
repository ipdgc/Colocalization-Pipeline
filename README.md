# Welcome to the IPDGC/ GP2 Hackathon: Colocalization Pipeline  

&nbsp;  

## What is _coloc_?  
**Colocalization** is an analysis to test if the **effect size of a SNP** on the phenotype is mediated by **gene expression**.  
This tool can be used to prioritize genes underlying **GWAS hits**  

&nbsp;  
&nbsp;  
&nbsp;  

![image](https://user-images.githubusercontent.com/84042456/117986308-cbe19b00-b339-11eb-8f90-3f33959f0a12.png)  
&nbsp;  
![image](https://user-images.githubusercontent.com/84042456/117987145-82458000-b33a-11eb-99d4-1e3573a14276.png)  

&nbsp;

## Coloc vs SMR vs HEIDI  
&nbsp;

* Coloc  
    Assumes a single causal variant  
    Reduced power in the presence of multiple causal variants  
* SMR  
    Integrates eQTL results to determine target genes of complex trait-associated GWAS loci  
    Derives an approximate X2-statistic for the mediating effect of the target gene expression on the phenotype  
* HEIDI (Heterogeneity) test  
    To distinguish between pleiotropy and linkage  
    Top associated cis-eQTL in linkage disequilibrium with two distinct causal variants - one affected gene expression and the other affecting trait variation  
