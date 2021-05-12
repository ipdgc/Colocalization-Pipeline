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
![image](https://user-images.githubusercontent.com/84042456/118014094-1facae00-b353-11eb-82fa-5748ac32b3bb.png)
&nbsp;
![image](https://user-images.githubusercontent.com/84042456/118014149-2d623380-b353-11eb-83f7-9b0ca91941a2.png)

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

&nbsp;
## Summary Stats
For the GWAS summary stats we will use **Nalls et al. 2019**  ![image](https://user-images.githubusercontent.com/64213922/118001110-6b8c3280-b314-11eb-87c1-4b1006ce4fbd.png)
For the eQTLs we will us **eQTLGen.** ![image](https://user-images.githubusercontent.com/64213922/118001201-7f379900-b314-11eb-8b03-764233e5114f.png)
&nbsp;
&nbsp;
