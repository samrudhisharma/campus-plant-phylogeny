
# Molecular Phylogenetic Analysis and Species Database of Campus Flora at Hislop College, Nagpur

## Overview

This repository presents a Bioinformatics project titled **"Molecular Phylogenetic Analysis and Species Database of Campus Flora at Hislop College, Nagpur."**

The project integrates molecular phylogenetics, biodiversity informatics, and database management to investigate and document the plant diversity of the Hislop College campus. A multi-gene phylogenetic framework was developed to infer evolutionary relationships among 59 plant species, while a dedicated MySQL species database was designed to organize taxonomic, phylogenetic, and biodiversity information in a structured and accessible format.

By combining evolutionary analysis with relational database design, this project demonstrates a reproducible workflow for biodiversity assessment, species documentation, and bioinformatics research.

## Research Objectives

* Document and organize the plant biodiversity of Hislop College campus.
* Construct a molecular phylogeny using multi gene sequence datasets.
* Infer evolutionary relationships among campus plant species.
* Identify and visualize major phylogenetic clades and family level groupings.
* Develop a relational MySQL database for biodiversity data management.
* Establish a reproducible bioinformatics workflow for future biodiversity studies.

## Study Area

### Hislop College, Nagpur, Maharashtra, India

Hislop College hosts a diverse assemblage of ornamental, medicinal, native, and cultivated plant species. The campus serves as an ideal model system for studying biodiversity, taxonomy, and evolutionary relationships within an urban ecosystem.

## Dataset Description

### Plant Diversity Dataset

| Feature            | Description                    |
| ------------------ | ------------------------------ |
| Total Species      | 59                             |
| Kingdom            | Plantae                        |
| Taxonomic Coverage | Multiple Families and Genera   |
| Outgroup Species   | *Cycas revoluta*               |
| Data Type          | Multi gene molecular sequences |
| Tree Format        | Newick (.nwk)                  |

### Metadata Includes

* Botanical Name
* Family
* Genus
* Species
* Taxonomic Classification
* Phylogenetic Placement

## Methodology

### 1. Plant Survey and Taxonomic Identification

Plant species present on the Hislop College campus were surveyed, documented, and taxonomically verified using standard botanical references.

### 2. Molecular Data Collection

Molecular marker sequences were retrieved from public sequence repositories and curated to ensure data quality and consistency.

### 3. Multiple Sequence Alignment

Sequences were aligned to identify homologous nucleotide positions across all species.

### 4. Phylogenetic Reconstruction

Evolutionary relationships were inferred using Maximum Likelihood (ML) phylogenetic methods based on the aligned multi-gene dataset.

### 5. Tree Rooting

The phylogenetic tree was rooted using:

**Cycas revoluta**

which served as the outgroup to establish evolutionary direction.

### 6. Phylogenetic Visualization

Tree visualization and annotation were performed in R using:

* ggtree
* ape
* phytools
* ggplot2
* dplyr

A circular phylogenetic tree was generated with family level color coding.

### 7. Species Database Development

A relational MySQL database was developed to manage biodiversity information associated with campus flora.

The database stores:

* Species Information
* Taxonomic Hierarchy
* Family Classification
* Genus Classification
* Biodiversity Records
* Phylogenetic Metadata

This database provides an organized framework for storing, querying, and expanding biodiversity information.

## Computational Methods and Software

### Bioinformatics

* R Programming
* Molecular Phylogenetics
* Biodiversity Informatics
* Evolutionary Analysis

### Database Management

* MySQL

### Data Visualization

* ggtree
* ggplot2

### Version Control

* Git
* GitHub

## Repository Structure

```text
PhylogenyFlora/
│
├── data/
│   ├── final_59_plant_tree.nwk
│   └── plantdb.sql
│
├── scripts/
│   └── main_analysis.R
│
├── figures/
│   └── final_colorful_tree.png
│
├── README.md
├── LICENSE
└── .gitignore
```

## Database Component

### MySQL Species Database

The project includes a MySQL database schema designed to support biodiversity documentation and future ecological studies.

#### Database Features

* Species Catalog Management
* Taxonomic Classification Storage
* Family and Genus Relationships
* Biodiversity Data Retrieval
* Research Data Organization

Database schema:

```text
data/plantdb.sql
```

To import into MySQL:

```sql
SOURCE plantdb.sql;
```

## Software Requirements

### R Version

```text
R >= 4.5
```

### Required Packages

```r
install.packages(c(
  "ape",
  "phytools",
  "ggplot2",
  "dplyr"
))

if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("ggtree")
```

## Installation

### Clone Repository

```bash
git clone https://github.com/YOUR_USERNAME/PhylogenyFlora.git
```

### Navigate to Project Directory

```bash
cd PhylogenyFlora
```

### Install Dependencies

Install the required R packages listed above.

## Usage

Run the phylogenetic visualization workflow:

```r
source("scripts/main_analysis.R")
```

### Outputs

* Circular Phylogenetic Tree
* Family-Level Clade Visualization
* Publication-Quality PNG Figures

## Results

### Major Outcomes

* Reconstructed evolutionary relationships among 59 campus plant species.
* Identified major family-level phylogenetic clusters.
* Visualized biodiversity using a circular phylogenetic tree.
* Developed a biodiversity-focused relational database.
* Established a reproducible bioinformatics workflow.
* Generated publication-quality phylogenetic figures.

## Scientific Significance

This project demonstrates the integration of molecular phylogenetics and biodiversity informatics for:

* Biodiversity assessment
* Evolutionary relationship analysis
* Taxonomic documentation
* Conservation planning
* Bioinformatics database development
* Reproducible computational biology research

## Future Directions

Potential extensions of this work include:

* DNA Barcoding Analysis
* Chloroplast Genome Phylogenetics
* Phylogenetic Diversity Metrics
* Species Richness Estimation
* Comparative Campus Biodiversity Studies
* Interactive Phylogenetic Tree Dashboards
* GIS-Based Biodiversity Mapping
* Web-Based Biodiversity Database Portal
* Shiny Application Development
* Automated Species Information Retrieval

## Reproducibility

To ensure transparency and reproducibility:

* Source code is publicly available.
* Phylogenetic tree data are included.
* Database schema is included.
* Analysis workflow is documented.
* Version control is maintained through GitHub.

## Citation

If you use this repository in academic work, please cite:

**Samrudhi Sharma (2026). Molecular Phylogenetic Analysis and Species Database of Campus Flora at Hislop College, Nagpur.**

## Author

**Samrudhi Sharma**

*M.Sc. Bioinformatics*

*Rajiv Gandhi Institute Of IT and Biotechnology, Pune, Maharashtra, India*

## License

This project is released under the MIT License.

See the LICENSE file for details.
