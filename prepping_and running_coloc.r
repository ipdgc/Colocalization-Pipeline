### To do:
#### -gwas=not rsIDs
#### -need snp chr/bp info for gwas

## Getting necessary data
###load eQTLGen whole blood cis-eQTL results
!wget https://molgenis26.gcc.rug.nl/downloads/eqtlgen/cis-eqtl/2019-12-11-cis-eQTLsFDR-ProbeLevel-CohortInfoRemoved-BonferroniAdded.txt.gz

###load GTEx v8 tissue eQTL results
!wget https://storage.googleapis.com/gtex_analysis_v8/single_tissue_qtl_data/GTEx_Analysis_v8_eQTL.tar
##untar file
!tar -xvf GTEx_Analysis_v8_eQTL.tar


##load necessary packages
require(data.table)
library(data.table)  
library(dplyr)
library(dbplyr)
library(devtools)
library(coloc)

###input files
##GWAS summary
gwas_file <- '/labshare/anni/ipdgc/coloc/nallsEtAl2019_excluding23andMe_allVariants.tab'

##eQTL summary
#whole blood
eqtl <- '/labshare/anni/eqtl/eQTLGen/cis-eQTLs-full_eQTLGen_AF_incl_nr_formatted_20191212.new.txt_besd-dense.txt'
##substantia nigra
#eqtl <- '/labshare/anni/ipdgc/coloc/GTEx_Analysis_v8_eQTL/Brain_Substantia_nigra.v8.egenes.txt.gz'


##variables
##eQTL gene of interest bp boundaries
goi_lower <- 4000000
goi_upper <- 4500000

gwas_df <- fread(gwas_file, header=TRUE)
head(gwas_df)

##get region of interest
rs1_bp <- gwas_df[gwas_df$SNP == "rs1", ]$bp
rs2_bp <- gwas_df[gwas_df$SNP == "rs2", ]$bp

selected_region <- gwas_df %>% 
  filter(bp >= rs1_bp - 500000 & bp <= rs2_bp + 500000)


#add v -requested by the package
v <- gwas_df %>% 
  mutate(s = N_cases / (N_cases + N_controls)) #%>% 

# Make varBetas - its simply requested by the package 
gwas_df$varbeta = gwas_df$se*gwas_df$se
head(gwas_df)

##QC check
# Check for duplicates
n_duplicates <- 
  selected_region %>% 
  dplyr::filter(duplicated(SNP) | duplicated(SNP, fromLast = TRUE)) %>% 
  .[["SNP"]] %>% 
  unique() %>% 
  length()

#Check for beta 0
n_beta_zero <- 
  selected_region %>% 
  dplyr::filter(b == 0) %>% 
  .[["SNP"]] %>% 
  unique() %>% 
 length()

# Get rid of a SNP with beta == 0
selected_region_1 <- selected_region[selected_region$beta != 0, ]

eQTL <- fread(eqtl_blood_file, header=TRUE)
selected_region_QTL <- eQTL %>% filter(BP >= goi_lower & BP <= goi_upper)

#change names
selected_region_QTL$b_MA <- selected_region_QTL$b

selected_region_QTL[selected_region_QTL$Freq > 0.50, ]$b_MA <- selected_region_QTL[selected_region_QTL$Freq > 0.50, ]$b_MA *-1
selected_region_QTL$MAF <- selected_region_QTL$Freq

#calculate varbeta for coloc
selected_region_QTL[selected_region_QTL$Freq > 0.50, ]$MAF <- 1 - selected_region_QTL[selected_region_QTL$Freq > 0.50, ]$MAF
selected_region_QTL$varbeta = selected_region_QTL$SE*selected_region_QTL$SE

#subset to only necessary columns
selected_region_QTL <- selected_region_QTL %>% 
  dplyr::select(SNP, A1, BP, A2, Freq, Gene, BP, b, SE, p, MAF, varbeta, b_MA)
selected_region_QTL <- selected_region_QTL[complete.cases(selected_region_QTL), ]

head(eQTL)
head(selected_region_QTL)

#### merge pre-prepared cleaned summary stats
df <- dplyr::inner_join(selected_region, selected_region_QTL, by = "SNP", suffix = c(".gwas", ".eqtl"))

###filter by unique "Gene" values
genes <- unique(df$Gene)


###function to run coloc and present results of coloc as a combined output
my.res <- lapply(genes, function(x) {
  df_sub <- df[df$Gene == x, ]
  res <- coloc.abf(dataset1=list(beta=df_sub$beta, varbeta=df_sub$varbeta.gwas, s =df_sub$s, type="cc"),
                   dataset2=list(beta=df_sub$b, varbeta=df_sub$varbeta.eqtl, N=nrow(df_sub), MAF=df_sub$MAF.eqtl, type="quant"))
  res <- as.data.frame(t(res$summary))
  return (data.frame(gene = x, res))
})
results <- do.call("rbind", my.res)
results
