# Molecular Phylogenetic Analysis and Species Database of Campus Flora at Hislop College, Nagpur

## Maximum Likelihood Phylogenetic Tree of Campus Flora

![Maximum Likelihood Phylogenetic Tree](figures/final_phylogenetic_tree_landscape.png)

![R](https://img.shields.io/badge/R-Programming-blue)
![MySQL](https://img.shields.io/badge/MySQL-Database-orange)
![ggtree](https://img.shields.io/badge/ggtree-Phylogenetics-green)
![License](https://img.shields.io/badge/License-MIT-yellow)
![Species](https://img.shields.io/badge/Species-59-success)

---

# Overview

This repository presents the computational framework, datasets, and results for a Master's-level research project integrating molecular phylogenetics, biodiversity informatics, and relational database management for the documentation and evolutionary analysis of campus plant diversity.

A multi-gene molecular phylogenetic framework was developed for 59 plant species occurring on the Hislop College campus, Nagpur, Maharashtra, India. Evolutionary relationships were inferred using Maximum Likelihood (ML) methods, and a publication-quality landscape phylogenetic tree was generated with family-level color coding. Complementing the phylogenetic analysis, a structured MySQL relational database was designed to organize, store, and query taxonomic and biodiversity information associated with the documented flora.

This project demonstrates a reproducible, end-to-end bioinformatics workflow from field survey and molecular data curation to phylogenetic reconstruction, visualization, and biodiversity database development.

---

# Scientific Background

Urban campus environments serve as valuable model systems for studying plant biodiversity, taxonomy, and evolutionary relationships within anthropogenic ecosystems. Hislop College, Nagpur, Maharashtra hosts a heterogeneous assemblage of ornamental, medicinal, native, and cultivated plant species, making it an ecologically and taxonomically rich study site.

Molecular phylogenetics, using multi-gene sequence datasets retrieved from public repositories, enables rigorous inference of evolutionary relationships beyond morphology-based classification. Integration of phylogenetic data with relational database architectures facilitates scalable, queryable biodiversity documentation, a foundational requirement for conservation planning, ecological monitoring, and comparative biodiversity research.

This project bridges field botany, molecular evolutionary biology, and computational data management within a unified, reproducible bioinformatics framework.

---

# Research Objectives

- Document and organize the plant biodiversity of the Hislop College campus, Nagpur.
- Curate a high-quality multi-gene molecular sequence dataset for phylogenetic analysis.
- Reconstruct evolutionary relationships among 59 campus plant species using Maximum Likelihood phylogenetics.
- Identify and visualize major phylogenetic clades and family-level groupings.
- Generate publication-quality phylogenetic tree figures with family-level annotation.
- Design and implement a relational MySQL database for structured biodiversity data management.
- Establish a reproducible bioinformatics workflow for future comparative campus biodiversity studies.

---

# Study Area

| Attribute | Details |
|------------|------------|
| Institution | Hislop College, Nagpur |
| Location | Nagpur, Maharashtra, India |
| Ecosystem Type | Urban campus ecosystem |
| Vegetation Composition | Ornamental, medicinal, native, and cultivated plant species |
| Biodiversity Significance | Diverse multi-family plant assemblage within an urban landscape |

The campus flora represents a taxonomically diverse assemblage spanning multiple angiosperm families and growth forms, providing a suitable model system for integrating molecular phylogenetics with urban biodiversity assessment.

---

# Dataset Description

## Summary

| Feature | Details |
|------------|------------|
| Total Species | 59 |
| Kingdom | Plantae |
| Outgroup Species | Cycas revoluta (Cycadaceae) |
| Data Type | Multi-gene molecular sequences |
| Sequence Source | Public sequence repositories (curated) |
| Tree Format | Newick (.nwk) |
| Taxonomic Coverage | Multiple families and genera |

## Metadata Variables

| Variable | Description |
|------------|------------|
| Botanical Name | Accepted scientific binomial |
| Family | Plant family classification |
| Genus | Genus-level classification |
| Species Epithet | Species-level identifier |
| Taxonomic Rank | Hierarchical classification |
| Phylogenetic Placement | Clade assignment from ML tree |

---

# Methodology

## 1. Plant Survey and Taxonomic Identification

A systematic field survey was conducted across the Hislop College campus to document all identifiable plant species. Taxonomic identification was verified using standard botanical references and herbarium resources.

## 2. Molecular Data Collection

Multi-gene molecular marker sequences were retrieved from public biological sequence repositories. Data were curated to ensure sequence quality, taxonomic accuracy, and consistency across all 59 target species and the outgroup taxon *Cycas revoluta*.

## 3. Multiple Sequence Alignment

Retrieved sequences were subjected to multiple sequence alignment to identify and verify homologous nucleotide positions across all taxa.

## 4. Phylogenetic Reconstruction

Evolutionary relationships were inferred using Maximum Likelihood (ML) phylogenetic methods applied to the aligned molecular dataset.

## 5. Tree Rooting

The phylogenetic tree was rooted using *Cycas revoluta* as the designated outgroup.

## 6. Phylogenetic Visualization

Tree visualization, annotation, and figure generation were performed in R using:

| Package | Role |
|------------|------------|
| ggtree | Phylogenetic tree plotting and annotation |
| ape | Tree manipulation and Newick import |
| phytools | Evolutionary analysis |
| ggplot2 | Visualization |
| dplyr | Data handling |

A rooted Maximum Likelihood phylogenetic tree was generated using *Cycas revoluta* as the outgroup. Species labels were displayed in italic format and color-coded according to plant family, enabling visualization of evolutionary relationships and family-level clustering across the documented campus flora.

## 7. Species Database Development

A normalized MySQL relational database was designed and implemented to store, manage, and query taxonomic and biodiversity information associated with documented campus flora.

---

# Computational Methods and Software

| Category | Tool / Software |
|------------|------------|
| Phylogenetic Analysis | Maximum Likelihood (ML) |
| Programming Language | R |
| Tree Visualization | ggtree |
| Evolutionary Utilities | ape, phytools |
| Data Manipulation | dplyr, ggplot2 |
| Database Management | MySQL |
| Version Control | Git, GitHub |

---

# Repository Structure

```text
PhylogenyFlora/

├── data/
│
├── figures/
│   └── final_phylogenetic_tree_landscape.png
│
├── scripts/
│   └── main_analysis.R
│
├── final_59_plant_tree.nwk
├── README.md
├── LICENSE
└── .gitignore
```

# Usage

## Phylogenetic Analysis

```r
source("scripts/main_analysis.R")
```

### Outputs Generated

- Rooted Maximum Likelihood phylogenetic tree
- Family-level color-coded visualization
- Publication-quality landscape PNG figure
- Evolutionary relationship assessment among 59 plant species

Generated figure:

```text
figures/final_phylogenetic_tree_landscape.png
```

---

# Results and Key Findings

| Outcome | Description |
|----------|----------|
| Phylogenetic Reconstruction | ML tree successfully resolved evolutionary relationships among 59 campus plant species |
| Family-Level Clustering | Species grouped according to major taxonomic lineages and plant families |
| Outgroup Rooting | Cycas revoluta correctly resolved as the basal outgroup |
| Tree Visualization | Publication-quality landscape phylogenetic tree generated using R and ggtree |
| Biodiversity Database | Structured MySQL database developed |
| Reproducible Workflow | Complete analysis pipeline documented and version controlled |

The phylogenetic analysis revealed that campus plant diversity spans multiple major angiosperm lineages, with family-level clustering largely consistent with established molecular systematics.

---

# Author

**Samrudhi Sharma**

M.Sc. Bioinformatics

Rajiv Gandhi Institute of IT and Biotechnology

Pune, Maharashtra, India

---

# License

This project is released under the MIT License.

See the LICENSE file for complete terms.
