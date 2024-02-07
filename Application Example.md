# Example of Modeling a human:parasite interaction

_This application example demonstrates human:parasite domain-domain interaction modeling using AF2-Multimer v2.2._

Modeling domain-domain interactions with AF2-Multimer v2.2 offers both local and cloud-based options. For [TROPIC](https://github.com/beyzakaynarca/TROPIC/edit/main/README.md), since we modeled 276 human-parasite interactions, we installed AF2-Multimer on our computational resources to facilitate recursive modeling, requiring substantial computational power and extensive storage data.

## Alt başlık koy 

### 1-Installation of AF2-Multimer v2.2 on Your Own Computer for Modeling Interactions:

Installing AF2 locally allows users to customize parameters and fine-tune settings based on specific research needs. If you need to perform recursive modeling for multiple interactions, it's recommended to download AF2-Multimer v2.2 to your computer. This allows you to provide sequences consecutively and model them efficiently. 

### 2-Modeling Interaction with AF2-Multimer v2.2 on ColabFold:

Alternatively, for single multimer modeling, you can utilize ColabFold, developed by [Mirdita, M. et al.](https://www.nature.com/articles/s41592-022-01488-1)². ColabFold provides a tailored environment for using AF2-Multimer on Google Colab and offers comparable performance to AlphaFold by optimizing with Multiple Sequence Alignment (MSA). ColabFold presents results visually, while executing the script on your computer greatly simplifies the modeling process. The advantage of using ColabFold is its accessibility and convenience. You can model protein-protein interactions without the need for installation or specialized hardware, making it ideal for quick analyses or for users without access to high-performance computing resources.
For deitailed instructions to model with Colabfold, you can employ the CSB-Karacalab github page on [Complex modeling using ColabFold](https://github.com/CSB-KaracaLab/CSB-WS).

## Alt başlık koy

In this example, we will demonstrate how we modeled a single interaction. For this example application, let's focus on one of the final targetable candidate interaction identified in our study: 

 **Human : G. Lamblia human-parasite pair ENSP0000035798 : PF08246 XP 001706373.1.**








## Outputs
_The outputs (--output_dir directory ) comprise computed MSAs, unrelaxed structures, relaxed structures, ranked structures, raw model outputs, prediction metadata, and section timings._

You can read the contents of each output file from [here](https://github.com/google-deepmind/alphafold?tab=readme-ov-file).

## Analyzing Models

After the modeling step,  by following the [Andrea’s analysis github page](https://github.com/grandrea/Alphafold-analysis) you can analyze the outputs. 
_Please remember, to analyze models, numpy, seaborn, pandas, matplotlib, biopython are required. It also requires jax to unpack .pkl files produced by AlphaFold. Pymol is optional and used by make_structure_figure.pml._

To analyze a single multimer run:
- **Put the .fasta file with the sequence submitted to alphafold in the results folder**
- **Run python plot_AF_all.py**: You will have model statistics.csv, pLDDT.png, predicted alignment error.png outputs.
- **Run pymol -cq make_structure_figure.pml**: You will have interface_hbonds.png, pLDDT_structure.png, structure.png outputs.



  If you would like to read more about evaluating the models [here](https://github.com/beyzakaynarca/TROPIC/edit/main/README.md)
