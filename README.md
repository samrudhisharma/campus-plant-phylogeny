# Molecular Phylogenetic Analysis and Species Database of Campus Flora at Hislop College, Nagpur

## Maximum Likelihood Phylogenetic Tree of Campus Flora

![Maximum Likelihood Phylogenetic Tree](figures/final_phylogenetic_tree_landscape.png)

---

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

## Usage

### Phylogenetic Analysis and Visualization

```r
source("scripts/main_analysis.R")
```

Outputs generated:

- Maximum Likelihood phylogenetic tree with family-level color coding
- Rooted phylogenetic tree using *Cycas revoluta* as outgroup
- Publication-quality landscape PNG figure
- Family-level evolutionary visualization

### Generated Figure

![Maximum Likelihood Phylogenetic Tree](figures/final_phylogenetic_tree_landscape.png)

## Results and Key Findings

| Outcome | Description |
|----------|----------|
| Phylogenetic Reconstruction | ML tree successfully resolved evolutionary relationships among all 59 campus plant species |
| Family-Level Clades | Major angiosperm family groupings identified and color-annotated on the phylogenetic tree |
| Outgroup Rooting | Cycas revoluta correctly resolved as sister to all ingroup taxa |
| Tree Visualization | Publication-quality landscape phylogenetic tree generated with family-level color coding |
| Biodiversity Database | Normalized MySQL database developed |
| Reproducible Workflow | End-to-end bioinformatics pipeline documented and version-controlled |

## Author

**Samrudhi Sharma**

M.Sc. Bioinformatics

Rajiv Gandhi Institute of IT and Biotechnology

Pune, Maharashtra, India

## License

This project is released under the MIT License.

See the LICENSE file for complete terms.

Developed as part of an M.Sc. Bioinformatics research project · Hislop College Campus Flora, Nagpur, India.
