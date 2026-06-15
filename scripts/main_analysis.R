# ==============================================================================
# Molecular Phylogenetic Analysis of Plant Biodiversity at Hislop College
#
# Author: Samruddhi Sharma
# Degree: M.Sc. Bioinformatics
#
# Description:
# This script loads a phylogenetic tree of 59 plant species, roots the tree
# using Cycas revoluta as an outgroup, assigns family-level metadata,
# visualizes the tree in a circular layout using ggtree, and saves a
# publication-quality phylogenetic tree figure.
# ==============================================================================

# ==============================================================================
# 1. Load Required Libraries
# ==============================================================================

library(ggtree)
library(ggplot2)
library(ape)
library(phytools)
library(dplyr)

# ==============================================================================
# 2. Load Phylogenetic Tree
# ==============================================================================

# Read the Newick tree file

raw_tree <- read.tree(
  "data/final_59_plant_tree.nwk"
)

# ==============================================================================
# 3. Root Tree Using Outgroup
# ==============================================================================

rooted_tree <- root(
  raw_tree,
  outgroup = "Cycas_revoluta",
  resolve.root = TRUE
)

# Replace underscores with spaces for cleaner labels

rooted_tree$tip.label <- gsub(
  "_",
  " ",
  rooted_tree$tip.label
)

# ==============================================================================
# 4. Family Metadata
# ==============================================================================

tree_metadata <- data.frame(
  label = rooted_tree$tip.label,
  Family = c(
    "Fabaceae", "Apocynaceae", "Simaroubaceae",
    "Apocynaceae", "Apocynaceae", "Araucariaceae",
    "Acanthaceae", "Meliaceae", "Fabaceae",
    "Asparagaceae", "Malvaceae", "Nyctaginaceae",
    "Fabaceae", "Casuarinaceae", "Malvaceae",
    "Rutaceae", "Arecaceae", "Combretaceae",
    "Cycadaceae", "Fabaceae", "Moraceae",
    "Moraceae", "Moraceae", "Moraceae",
    "Lamiaceae", "Proteaceae", "Malvaceae",
    "Malvaceae", "Ulmaceae", "Rubiaceae",
    "Bignoniaceae", "Lythraceae", "Fabaceae",
    "Arecaceae", "Anacardiaceae", "Rubiaceae",
    "Moringaceae", "Rutaceae", "Rubiaceae",
    "Fabaceae", "Verbenaceae", "Apocynaceae",
    "Annonaceae", "Fabaceae", "Myrtaceae",
    "Arecaceae", "Fabaceae", "Asparagaceae",
    "Asparagaceae", "Fabaceae", "Bignoniaceae",
    "Myrtaceae", "Apocynaceae", "Fabaceae",
    "Bignoniaceae", "Lamiaceae", "Combretaceae",
    "Cupressaceae", "Rhamnaceae"
  )
)

# ==============================================================================
# 5. Create Family Colour Palette
# ==============================================================================

family_colors <- setNames(
  scales::hue_pal()(
    length(unique(tree_metadata$Family))
  ),
  sort(unique(tree_metadata$Family))
)

# ==============================================================================
# 6. Build Circular Phylogenetic Tree
# ==============================================================================

p <- ggtree(
  rooted_tree,
  layout = "circular",
  branch.length = "none"
) %<+% tree_metadata

# ==============================================================================
# 7. Create Final Visualization
# ==============================================================================

final_tree_plot <- p +
  
  # Family-colored tip points
  
  geom_tippoint(
    aes(color = Family),
    size = 2,
    show.legend = TRUE
  ) +
  
  # Species labels
  
  geom_tiplab(
    aes(color = Family),
    size = 2.5,
    fontface = "italic",
    offset = 0.5,
    show.legend = FALSE
  ) +
  
  # Highlight major plant family clades
  
  geom_hilight(
    node = findMRCA(
      rooted_tree,
      tips = tree_metadata$label[
        tree_metadata$Family == "Fabaceae"
      ]
    ),
    fill = "blue",
    alpha = 0.20
  ) +
  
  geom_hilight(
    node = findMRCA(
      rooted_tree,
      tips = tree_metadata$label[
        tree_metadata$Family == "Moraceae"
      ]
    ),
    fill = "purple",
    alpha = 0.20
  ) +
  
  geom_hilight(
    node = findMRCA(
      rooted_tree,
      tips = tree_metadata$label[
        tree_metadata$Family == "Apocynaceae"
      ]
    ),
    fill = "pink",
    alpha = 0.20
  ) +
  
  geom_hilight(
    node = findMRCA(
      rooted_tree,
      tips = tree_metadata$label[
        tree_metadata$Family == "Bignoniaceae"
      ]
    ),
    fill = "green",
    alpha = 0.20
  ) +
  
  geom_hilight(
    node = findMRCA(
      rooted_tree,
      tips = tree_metadata$label[
        tree_metadata$Family == "Rubiaceae"
      ]
    ),
    fill = "red",
    alpha = 0.20
  ) +
  
  # Family colors
  
  scale_color_manual(
    values = family_colors
  ) +
  
  # Legend settings
  
  guides(
    color = guide_legend(
      override.aes = list(
        shape = 16,
        size = 4
      )
    )
  ) +
  
  theme(
    legend.position = "right",
    legend.title = element_text(
      face = "bold",
      size = 10
    ),
    legend.text = element_text(
      size = 8
    )
  ) +
  
  labs(
    title = "Phylogenetic Tree of Plant Species",
    subtitle = "Combined Multi-gene Analysis of Hislop College Flora",
    color = "Plant Family"
  )

# ==============================================================================
# 8. Display Tree
# ==============================================================================

print(final_tree_plot)

# ==============================================================================
# 9. Save High-Resolution Figure
# ==============================================================================

dir.create(
  "figures",
  showWarnings = FALSE
)

ggsave(
  filename = "figures/final_colorful_tree.png",
  plot = final_tree_plot,
  width = 12,
  height = 12,
  dpi = 300
)

# ==============================================================================
# End of Script
# ==============================================================================
