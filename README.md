# ShRec3D-Exented
Shortest Path Reconstruction algorithm extended with different dimensionality reduction methods and tunable imputation 
parameter [1].
## ShRec3D
Algorithm developped by Lesnes et al [2] which reconstruct the 3D coordinates of a chromosom from a normalized HiC map (SCN [3]).
The Algorithm is basically in two parts:
 * Conversion from normalized HiC contact matrix C_{ij} in distance matrix D_{ij} such that C_{ij} = 1/D_{ij} 
 * Conversion of the distance mtrix in 3D coordinates with MDS

## Improvements
### Tuning the imputation parameter
Conversion from normalized HiC contact matrix C_{ij} in distance matrix D_{ij} such that C_{ij} = 1/D_{ij}^{\alpha} . 
The modification  of the \alpha parameter allows to tune the range of contacts to imputes (see video ...)

### Changing the dimensionality reduction algorithm
The MDS allows to reconstruct large distances efficiently, whereas sometimes the short range distances reconstruction 
are needed. The Sammon mapping and other DR (Dimensionality Reduction) algorithms allows to change the reconstruction focus.


[1] Morlot, Jean-Baptiste, Julien Mozziconacci, and Annick Lesne. "Network concepts for analyzing 3D genome structure from chromosomal contact maps." EPJ Nonlinear Biomedical Physics 4.1 (2016): 2. \
[2] Lesne, Annick, et al. "3D genome reconstruction from chromosomal contacts." Nature methods 11.11 (2014): 1141-1143. \
[3] Cournac, Axel, et al. "Normalization of a chromosomal contact map." BMC genomics 13.1 (2012): 436. \
