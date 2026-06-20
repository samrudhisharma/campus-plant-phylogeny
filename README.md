````markdown
# Molecular Phylogenetic Analysis and Species Database of Campus Flora at Hislop College, Nagpur

# Maximum Likelihood Phylogenetic Tree of Campus Flora

![Maximum Likelihood Phylogenetic Tree](figures/final_phylogenetic_tree_landscape.png)

## Overview

This repository presents the computational framework, datasets, and results for a Master's-level research project integrating molecular phylogenetics, biodiversity informatics, and relational database management for the documentation and evolutionary analysis of campus plant diversity.

A multi-gene molecular phylogenetic framework was developed for 59 plant species occurring on the Hislop College campus, Nagpur, Maharashtra, India. Evolutionary relationships were inferred using Maximum Likelihood methods, and a phylogenetic tree was generated with family-level color coding. Complementing the phylogenetic analysis, a structured MySQL relational database was designed to organize, store, and query taxonomic and biodiversity information associated with the documented flora.

This project demonstrates a reproducible, end-to-end bioinformatics workflow from field survey and molecular data curation to phylogenetic reconstruction, visualization, and biodiversity database development, applicable to urban ecosystem biodiversity assessment and conservation informatics.

## Scientific Background

Urban campus environments serve as valuable model systems for studying plant biodiversity, taxonomy, and evolutionary relationships within anthropogenic ecosystems. Hislop College, Nagpur, Maharashtra hosts a heterogeneous assemblage of ornamental, medicinal, native, and cultivated plant species, making it an ecologically and taxonomically rich study site.

Molecular phylogenetics, using multi-gene sequence datasets retrieved from public repositories, enables rigorous inference of evolutionary relationships beyond morphology-based classification. Integration of phylogenetic data with relational database architectures facilitates scalable, queryable biodiversity documentation, a foundational requirement for conservation planning, ecological monitoring, and comparative biodiversity research.

This project bridges field botany, molecular evolutionary biology, and computational data management within a unified, reproducible bioinformatics framework.

## Research Objectives

- Document and organize the plant biodiversity of the Hislop College campus, Nagpur.
- Curate a high-quality multi-gene molecular sequence dataset for phylogenetic analysis.
- Reconstruct evolutionary relationships among 59 campus plant species using Maximum Likelihood phylogenetics.
- Identify and visualize major phylogenetic clades and family-level groupings.
- Generate publication-quality phylogenetic tree figures with family-level annotation.
- Design and implement a relational MySQL database for structured biodiversity data management.
- Establish a reproducible bioinformatics workflow for future comparative campus biodiversity studies.

## Study Area

| Attribute | Details |
|------------|------------|
| Institution | Hislop College, Nagpur |
| Location | Nagpur, Maharashtra, India |
| Ecosystem Type | Urban campus ecosystem |
| Vegetation Composition | Ornamental, medicinal, native, and cultivated plant species |
| Biodiversity Significance | Diverse multi-family plant assemblage within an urban landscape |

The campus flora represents a taxonomically diverse assemblage spanning multiple angiosperm families and growth forms, providing a suitable model system for integrating molecular phylogenetics with urban biodiversity assessment.

## Dataset Description

### Summary

| Feature | Details |
|----------|----------|
| Total Species | 59 |
| Kingdom | Plantae |
| Outgroup Species | Cycas revoluta (Cycadaceae) |
| Data Type | Multi-gene molecular sequences |
| Sequence Source | Public sequence repositories (curated) |
| Tree Format | Newick (.nwk) |
| Taxonomic Coverage | Multiple families and genera |

### Metadata Variables

| Variable | Description |
|----------|-------------|
| Botanical Name | Accepted scientific binomial |
| Family | Plant family classification |
| Genus | Genus-level classification |
| Species Epithet | Species-level identifier |
| Taxonomic Rank | Hierarchical classification |
| Phylogenetic Placement | Clade assignment from ML tree |

## Methodology

### 1. Plant Survey and Taxonomic Identification

A systematic field survey was conducted across the Hislop College campus to document all identifiable plant species. Taxonomic identification was verified using standard botanical references and herbarium resources. Species selection prioritized broad family-level representation.

### 2. Molecular Data Collection

Multi-gene molecular marker sequences were retrieved from public biological sequence repositories. Data were curated to ensure sequence quality, taxonomic accuracy, and consistency across all 59 target species and the outgroup taxon, Cycas revoluta.

### 3. Multiple Sequence Alignment

Retrieved sequences were subjected to multiple sequence alignment to identify and verify homologous nucleotide positions across all taxa. Alignment quality was assessed prior to phylogenetic analysis.

### 4. Phylogenetic Reconstruction

Evolutionary relationships were inferred using Maximum Likelihood (ML) phylogenetic methods applied to the multi-gene aligned dataset. The ML framework was selected for its statistical robustness and suitability for multi-gene molecular datasets.

### 5. Tree Rooting

The resulting phylogenetic tree was rooted using Cycas revoluta (Cycadaceae) as the designated outgroup, establishing correct evolutionary polarity and directionality across all ingroup lineages.

### 6. Phylogenetic Visualization

Tree visualization, annotation, and figure generation were performed in R using:

| Package | Role |
|----------|------|
| ggtree | Phylogenetic tree plotting and annotation |
| ape | Tree manipulation and Newick import |
| phytools | Tree utilities and evolutionary analysis |
| ggplot2 | Graphical aesthetic customization |
| dplyr | Metadata handling and data wrangling |

A rooted Maximum Likelihood phylogenetic tree was generated with family-level color coding to facilitate visualization of major phylogenetic groupings and biodiversity patterns.

### 7. Species Database Development

A normalized MySQL relational database was designed and implemented to store, manage, and query all taxonomic and biodiversity information associated with documented campus flora. The schema supports extensible biodiversity data management for future studies.

## Computational Methods and Software

| Category | Tool / Software |
|----------|-----------------|
| Phylogenetic Analysis | Maximum Likelihood (ML) |
| Programming Language | R (>= 4.5) |
| Tree Visualization | ggtree (Bioconductor) |
| Evolutionary Utilities | ape, phytools |
| Data Manipulation | dplyr, ggplot2 |
| Database Management | MySQL, SQL |
| Version Control | Git, GitHub |

## Repository Structure

```text
PhylogenyFlora/

├── data/
│   ├── final_59_plant_tree.nwk
│   └── plantdb.sql

├── scripts/
│   └── main_analysis.R

├── figures/
│   └── final_phylogenetic_tree_landscape.png

├── README.md
├── LICENSE
└── .gitignore
```

## Installation

### Prerequisites

Ensure the following are installed on your system:

- R (>= 4.5)
- MySQL (>= 8.0)
- Git

## Usage

### Phylogenetic Analysis and Visualization

```r
source("scripts/main_analysis.R")
```

Outputs generated:

- Maximum Likelihood phylogenetic tree with family-level color coding (figures/final_phylogenetic_tree_landscape.png)
- Family-level clade visualization
- Publication-quality PNG figures suitable for thesis, poster, or manuscript submission

## Results and Key Findings

| Outcome | Description |
|----------|-------------|
| Phylogenetic Reconstruction | ML tree successfully resolved evolutionary relationships among all 59 campus plant species |
| Family-Level Clades | Major angiosperm family groupings identified and color-annotated on the phylogenetic tree |
| Outgroup Rooting | Cycas revoluta correctly resolved as sister to all ingroup taxa, confirming tree directionality |
| Tree Visualization | Publication-quality landscape phylogenetic tree generated with family-level color coding |
| Biodiversity Database | Normalized MySQL database developed with species, taxonomic, and phylogenetic data tables |
| Reproducible Workflow | End-to-end bioinformatics pipeline documented and version-controlled |

The phylogenetic analysis revealed that campus plant diversity spans multiple major angiosperm lineages, with clear family-level clustering consistent with established molecular systematics. The resulting tree and associated database together constitute a structured biodiversity resource for the Hislop College campus ecosystem.

## Database Component

### MySQL Species Database

The plantdb.sql schema implements a normalized relational database for campus flora biodiversity management.

## Scientific Significance

This project contributes to biodiversity science and computational biology in several respects:

- Biodiversity Documentation
- Evolutionary Framework
- Database Infrastructure
- Methodological Integration
- Training in Reproducible Science

## Reproducibility

All analyses can be reproduced by cloning this repository, installing the documented R dependencies, and executing main_analysis.R.

## Future Directions

- DNA Barcoding
- Chloroplast Genome Phylogenetics
- Phylogenetic Diversity Metrics
- Species Richness Estimation
- Comparative Campus Biodiversity Studies
- Interactive Phylogenetic Tree Dashboard
- GIS-Based Biodiversity Mapping
- Web-Based Biodiversity Portal
- Automated Species Information Retrieval

## Citation

Samrudhi Sharma (2026). Molecular Phylogenetic Analysis and Species Database of Campus Flora at Hislop College, Nagpur. M.Sc. Bioinformatics Project.

Rajiv Gandhi Institute of IT and Biotechnology, Pune, Maharashtra, India.

GitHub: https://github.com/samrudhisharma/campus-plant-phylogeny

## Author

Samrudhi Sharma

M.Sc. Bioinformatics

Rajiv Gandhi Institute of IT and Biotechnology

Pune, Maharashtra, India

## License

This project is released under the MIT License.

See the LICENSE file for complete terms.

Developed as part of an M.Sc. Bioinformatics research project · Hislop College Campus Flora, Nagpur, India.
````
