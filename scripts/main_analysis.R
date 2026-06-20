# ==============================================================================
# Molecular Phylogenetic Analysis of Plant Biodiversity at Hislop College
# Author: Samrudhi Sharma
# ==============================================================================

# ============================================================
# Load Libraries
# ============================================================

library(ape)
library(ggtree)
library(ggplot2)
library(dplyr)
library(scales)

# ============================================================
# Read Tree
# ============================================================

tree59 <- read.tree(
  "C:/Documents/PhylogenyFlora/final_59_plant_tree.nwk"
)

# ============================================================
# Root Tree
# ============================================================

tree59 <- root(
  tree59,
  outgroup = "Cycas_revoluta",
  resolve.root = TRUE
)

# ============================================================
# Replace Underscores with Spaces
# ============================================================

tree59$tip.label <- gsub(
  "_",
  " ",
  tree59$tip.label
)

# ============================================================
# Metadata
# ============================================================

tree_metadata <- data.frame(
  label = c(
    "Acacia nilotica",
    "Adenium obesum",
    "Plumeria alba",
    "Tabernaemontana divaricata",
    "Allamanda cathartica",
    "Alstonia scholaris",
    "Mitragyna parvifolia",
    "Mussaenda erythrophylla",
    "Asystasia gangetica",
    "Kigelia pinnata",
    "Tecoma stans",
    "Spathodea campanulata",
    "Petrea volubilis",
    "Bauhinia variegata",
    "Tamarindus indica",
    "Polyalthia longifolia",
    "Ficus benghalensis",
    "Ficus religiosa",
    "Ficus racemosa",
    "Grevillea robusta",
    "Moringa oleifera",
    "Ailanthus excelsa",
    "Roystonea regia",
    "Sansevieria cylindrica",
    "Thuja occidentalis",
    "Cassia fistula",
    "Delonix regia",
    "Peltophorum pterocarpum",
    "Leucaena leucocephala",
    "Pongamia pinnata",
    "Samanea saman",
    "Sesbania grandiflora",
    "Combretum indicum",
    "Terminalia catappa",
    "Lagerstroemia speciosa",
    "Psidium guajava",
    "Syzygium cumini",
    "Bombax ceiba",
    "Ceiba pentandra",
    "Citrus limon",
    "Murraya paniculata",
    "Mangifera indica",
    "Hibiscus rosa-sinensis",
    "Azadirachta indica",
    "Bougainvillea spectabilis",
    "Holoptelea integrifolia",
    "Ziziphus jujuba",
    "Guazuma tomentosa",
    "Ficus benjamina",
    "Gmelina arborea",
    "Tectona grandis",
    "Casuarina equisetifolia",
    "Beaucarnea recurvata",
    "Cocos nucifera",
    "Livistona chinensis",
    "Sansevieria trifasciata",
    "Araucaria bidwillii",
    "Cycas revoluta",
    "Ixora coccinea"
  ),
  
  Family = c(
    "Fabaceae","Apocynaceae","Apocynaceae","Apocynaceae",
    "Apocynaceae","Apocynaceae","Rubiaceae","Rubiaceae",
    "Acanthaceae","Bignoniaceae","Bignoniaceae","Bignoniaceae",
    "Verbenaceae","Fabaceae","Fabaceae","Annonaceae",
    "Moraceae","Moraceae","Moraceae","Proteaceae",
    "Moringaceae","Simaroubaceae","Arecaceae","Asparagaceae",
    "Cupressaceae","Fabaceae","Fabaceae","Fabaceae",
    "Fabaceae","Fabaceae","Fabaceae","Fabaceae",
    "Combretaceae","Combretaceae","Lythraceae","Myrtaceae",
    "Myrtaceae","Malvaceae","Malvaceae","Rutaceae",
    "Rutaceae","Anacardiaceae","Malvaceae","Meliaceae",
    "Nyctaginaceae","Ulmaceae","Rhamnaceae","Malvaceae",
    "Moraceae","Lamiaceae","Lamiaceae","Casuarinaceae",
    "Asparagaceae","Arecaceae","Arecaceae","Asparagaceae",
    "Araucariaceae","Cycadaceae","Rubiaceae"
  ),
  
  stringsAsFactors = FALSE
)

# ============================================================
# Family Colors
# ============================================================

family_colors <- setNames(
  scales::hue_pal()(
    length(unique(tree_metadata$Family))
  ),
  sort(unique(tree_metadata$Family))
)

# ============================================================
# Build Tree
# ============================================================

p <- ggtree(
  tree59,
  layout = "rectangular",
  branch.length = "none",
  size = 0.8
) %<+% tree_metadata

# ============================================================
# Final Plot
# ============================================================

final_tree <- p +
  
  geom_tippoint(
    aes(color = Family),
    size = 2.8
  ) +
  
  geom_tiplab(
    aes(color = Family),
    size = 4.4,
    fontface = "italic",
    align = TRUE,
    linetype = 0,
    offset = 0.10,
    show.legend = FALSE
  ) +
  
  xlim_tree(22) +
  
  scale_color_manual(
    values = family_colors,
    guide = guide_legend(
      override.aes = list(
        shape = 16,
        size = 4,
        label = NULL
      )
    )
  ) +
  
  labs(
    title = "Maximum Likelihood Phylogenetic Tree of Campus Flora",
    color = "Plant Family"
  ) +
  
  theme_tree2() +
  
  theme(
    plot.title = element_text(
      size = 20,
      face = "bold",
      hjust = 0.5
    ),
    
    legend.position = "right",
    
    legend.title = element_text(
      size = 15,
      face = "bold"
    ),
    
    legend.text = element_text(
      size = 10
    ),
    
    legend.key.size = unit(0.6, "cm")
  )
# ============================================================
# Display Plot
# ============================================================

print(final_tree)

# ============================================================
# Save Figure
# ============================================================

ggsave(
  filename = "final_phylogenetic_tree_landscape.png",
  plot = final_tree,
  path = "C:/Documents/PhylogenyFlora/figures",
  width = 24,
  height = 12,
  units = "in",
  dpi = 600,
  bg = "white"
)

cat(
  "\nTree saved successfully to:\n",
  "C:/Documents/PhylogenyFlora/figures/final_phylogenetic_tree_landscape.png\n"
)
