<img width="1099" alt="github-title" src="Title-Tropic.png">

Parasitic diseases, particularly prevalent in underdeveloped countries and among young children, pose a significant global concern with substantial socioeconomic impacts. To overcome the challenges posed by drug resistance and limited pharmaceutical options, understanding molecular interactions between parasites and hosts at the genetic, transcriptomic, proteomic, and metabolomic levels is crucial for unraveling infection patterns and host adaptation. Building on [Dr. Cuesta-Astroz's 2019 study](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6381214/) that unraveled human-parasite interactomes in 15 parasites, TROPIC proposes a complementary approach involving genomics and structural biology. Here, determined human-parasite interactions were modeled using [AF2-Multimer v2.2](https://www.biorxiv.org/content/10.1101/2021.10.04.463034v1) on the Turkish National Computational Resources [TRUBA](https://www.truba.gov.tr/).

## Methodology: _Modeling of Identified Human-Parasite Interactions Using AF2-Multimer_

### AF2-Multimer Modeling

Within the framework of the TROPIC, we identified [276 domain-domain interactions](https://github.com/beyzakaynarca/TROPIC/blob/main/Determined-human-parasite-interactions.txt) among human-parasite interactions situated at the most central nodes of 15 eukaryotic parasites (T. spiralis, T. gondii, T. brucei, S. mansoni, P. vivax, P. knowlesi, L. infantum, L. donovani, L. braziliensis, C. parvum, G. lamblia, T. cruzi, P. falciparum, C. hominis, and L. mexicana) in the interactome map. To model the three-dimensional structures of these interactions, we employed the advanced structure modeling method AF2-Multimer v2.2. Modeling was performed on TRUBA since there are 276 interactions to be modeled, requiring recursive modeling. The installation of AF2-Multimer was done by following [AF2 github page](https://github.com/google-deepmind/alphafold). 
By following [AF2 analysis github page](https://github.com/grandrea/Alphafold-analysis) ,  25 models were generated for each domain-domain interactions.


#### Determination of Druggable Interactions from the Modeled Interactions, Including Structural and Evolutionary Data

In this step, the aim was to evaluate the modeled structures based on interface quality and identify models with high-quality interfaces. The models were filtered according to their confidence scores. 
- **Confidence Rank (Confrank) Score**: Confidance score is a linear combination of the predicted interface TMscore (ipTM) and the predicted TMscore (pTM), determined as 0.8 × ipTM + 0.2 × pTM. 
- **ipTM (Interface Predicted Template Modeling) Score:** Assesses the quality of interfaces in multimeric structures and gauges accuracy at the complex level and. 
- **pTM (Predicted TM Score):** Represents the matching value between two constructs and assess the accuracy of predictions within individual protein chains.

All scores range between 0 and 1. As the scores goes from 0 to 1, the model quality increases.

For each run, among 25 generated models, we selected the Ranked_0.pdb model which has the highest confidence score.For further investion, we also used pLDDT scores to color the 3D structures of models to investigate the quality of the residue predictions on the interface further as well as with the PAE graphs.

- **pLDDT (Predicted Local Distance Difference Test) Score:** According to the pLDDT score calculated by AF2-Multimer, which measures how well the distances between atoms can be predicted, high-quality regions of the models are colored according to blue color and tones, and low-quality regions are colored according to red color and tones.
- **PAE (Predicted Alignment Error)**: The reliability of the pLDDT score can be questioned via PAE plots that show the expected distance error in Angstroms. In the PAE plot, the predicted and actual structures are aligned on the y-axis, and the expected positional error of Alphafold is scored on the x-axis. The expected error score, which is low in the blue areas, gets higher and higher towards the red.


## Results
Among the [Rank_0 model scores of 276 interaction models](TROPIC-AF2-results.csv) 8 interactions with confrank>0.9 were identified to have significant biological impact in host-parasite interaction.

![tropic-final-candidates](tropic-final-candidates.jpeg)
