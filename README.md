<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/github_username/repo_name">
    <img src="images/GP2_logo.png" alt="Logo" width="300" height="70">
  </a>

<h3 align="center">Colocalization pipeline</h3>

  <p align="center">
    One of the projects from the 2021 GP2/IPDGC Hackathon. The related manuscript can be found on [biorxiv](https://www.biorxiv.org/content/10.1101/2022.05.04.490670v1) 
    <br />
    Contributers: Shilpa Rao, Konstantin Senkevich, Prabhjyot Saini, Paula Reyes P, Will Scotton, Anni Moore, Devina Chetty
    <br />
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#quick-description">Quick Description</a></li>
        <li><a href="#background/motivation">Background/motivation</a></li>
        <li><a href="#workflow-summary">Workflow Summary</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

![Project Screen Shot][project-screenshot]

### Quick Description

The goal for this project was to develop a pipeline for colocalization analysis.

### Background/motivation

Colocalization is an analysis to test if the effect size of a SNP on the phenotype is mediated by **gene expression. This tool can be used to prioritize genes underlying GWAS hits and decode non-coding variant associations. Colocalization integrates eQTL data to determine if a non-coding variant nominated through GWAS 'colocalizes' with a known eQTL, suggesting a potential causal mechanism for that variant. This workflow serves as an example for how to use and format summary statistics and eQTL data for colocalization and visualization.     

### Workflow Summary

1. Download/identify your desired GWAS summary statistics and eQTL data
2. Format for and perform colocalization
3. Visualization of colocalization

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->
## Getting Started

### Prerequisites

* [coloc](https://cran.r-project.org/web/packages/coloc/index.html) 
* [eQTpLot](https://biodatamining.biomedcentral.com/articles/10.1186/s13040-021-00267-6)

### Installation

1. Clone the repo
   ```sh
   git clone https://github.com/ipdgc/Colocalization-Pipeline.git
   ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- USAGE EXAMPLES -->
## Usage

These R scripts contain examples of how to perform colocalization with eQTL data from eQTLGen and Parkinson's Disease summary statistics from Nalls et al 2019, but by changing the file paths you can use these scripts for any eQTL data and GWAS summary statistics.

### 1. Prep and run colocalization with prepping_and_running_coloc.r  
* Assumes a single causal variant  
* Reduced power in the presence of multiple causal variants    
### 2. Visualize colocalization with eQTpLot
* Visualization of colocalization between eQTL and GWAS data  
* Comprehensive plots of colocalization between GWAS and eQTL signals and correlation between GWAS and eQTL p-values
* It provides visual information of effect size, direction of the effect, and distinguishes between congrous and incongrous effects

_For more examples, please refer to eQTpLot [documentation](https://biodatamining.biomedcentral.com/articles/10.1186/s13040-021-00267-6) and coloc  [documentation](https://github.com/chr1swallace/coloc)_

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

* [eQTLGen](https://www.eqtlgen.org/)
* [Nalls et al. 2019](https://pubmed.ncbi.nlm.nih.gov/31701892/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[project-screenshot]: images/project_screenshot.png
