# TROPIC: An Integrative Approach Aimed at Identifying Drug-Targetable Human-Parasite Interactions

## Overview

Parasitic diseases, especially prevalent in underdeveloped countries and among young children, pose a significant global concern with substantial socioeconomic impacts. To overcome the challenges posed by drug resistance and limited pharmaceutical options, understanding molecular interactions between parasites and hosts at the genetic, transcriptomic, proteomic and metabolomic level is crucial to unravel infection patterns and host adaptation. Building on Dr. Cuesta-Astroz's 2019 study, that unraveled human-parasite interactomes in 15 parasites TROPIC proposes a complementary approach involving genomics and structural biology. Here, determined human-parasite interations were modelled by using AF2-Multimer v2.2 on Turkish National Computational Resources (TRUBA).

## Methodology

## Modeling of Identified Human-Parasite Interactions Using Computational Structural Biology Approaches

### AlphaFold2-Multimer Modeling

Within the framework of the TROPIC project's goals, we identified 276 domain-domain interactions among human-parasite interactions situated at the most central node of 15 eukaryotic parasites (T. spiralis, T. gondii, T. brucei, S. mansoni, P. vivax, P. knowlesi, L. infantum, L. donovani, L. braziliensis, C. parvum, G. lamblia, T. cruzi, P. falciparum, C. hominis, and L. mexicana) in the interactome map. To model the three-dimensional structures of these interactions, we employed the advanced structure modeling method AlphaFold2-Multimer v2.2. This method integrates multiple sequence alignment (MSA) and existing structure information through a multilayered deep learning algorithm. The installation of necessary infrastructure for the advanced structure modeling method, 'AlphaFold2-Multimer v2.2', known to be twice as successful as classical homology modeling methods, was conducted on the national computing resource [TRUBA] (https://www.truba.gov.tr/).  Selected human-parasite interactions from 15 different organisms were modeled using computational resources provided by TRUBA.

![Fig_interactions pdf](https://github.com/beyzakaynarca/TROPIC/assets/113512363/32c96ada-5874-42d9-91d1-7151a31f56e7)



## Determination of Druggable Interactions from the Modeled Interactions, Including Structural and Evolutionary Data

### Filtering Models by Using Confidence Scores

In this step, the aim was to evaluate the modeled structures based on interface quality and identify models with high-quality interfaces. The models were filtered according to their quality scores.

### Structural Model Evaluation

In this phase, our objective was to assess the structural models based on the quality of their interfaces and identify those with high-quality interfaces. The models underwent a rigorous filtering process based on various quality scores:

- **pLDDT (Predicted Local Distance Difference Test):** Measures how well AlphaFold2-Multimer predicts interatomic distances. Scores range from 0 to 100. High-quality regions are colored in shades of blue, while low-quality regions are colored in shades of red. The transition from blue to red regions allows observation of decreasing model quality in areas corresponding to interface interaction regions.

- **pTM (Predicted TM Score):**: Represents the matching value between two constructs and assess the accuracy of predictions within individual protein chains . This score ranged from (0-1]. A quality TM score is expected to be at least TM=0.5.


- **ipTM (Interface Predicted Template Modeling) Score:** Assesses the quality of interfaces in multimeric structures and gauges accuracy at the complex level and. This score ranges from 0 to 1, with the quality of the modeled interface increasing as it moves from 0 to 1. Quality criteria are as follows:
  
  - ipTM < 0.55: Low-reliability interface
  - 0.55 ≤ ipTM ≤ 0.85: Medium-reliability interface
  - ipTM > 0.85: High-reliability interface

- **Confidence Rank (Confrank) Score**: Confidance score is a linear combination of the predicted interface TMscore (ipTM) and the predicted TMscore (pTM), determined as 0.8 × ipTM + 0.2 × pTM.

In the context of multiple complex model predictions, for each interaction Alphafold produces 25 predictions. We ranked the 25 predicted structures according to their confidence rank scores (0.8 × ipTM + 0.2 × pTM) and selected the top model, Rank_0.pdb. Thus, we filtered the model with the highest confidence score for further analysis and interpretation.


## Results

By selecting those with confrank>0.9 belonging to the Rank_0 model of 276 interactions, we identified 8 interactions of significant biological importance in host-parasite crosstalk.

![tropic-final-candidates](https://github.com/beyzakaynarca/TROPIC/assets/113512363/8bc8a6e3-3dbd-4c46-948d-f87ee2a7b993)
