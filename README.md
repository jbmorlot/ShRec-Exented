# ShRec3D-Exented
Shortest Path Reconstruction algorithm extended with different dimensionality reduction methods and tunable imputation 
parameter [1].
## ShRec3D
Algorithm developped by Lesnes et al [2] which reconstruct the 3D coordinates of a chromosom from a normalized HiC map (SCN [3]).
The Algorithm is basically in two parts:
 * Conversion from normalized HiC contact matrix ![img](http://latex.codecogs.com/svg.latex?%24C_%7Bij%7D%24) in distance matrix ![img](http://latex.codecogs.com/svg.latex?%24D_%7Bij%7D%24) such that ![img](http://latex.codecogs.com/svg.latex?%24C_%7Bij%7D+%3D+1%2FD_%7Bij%7D+%24)
 * Conversion of the distance mtrix in 3D coordinates with MDS

## Improvements
### Tuning the imputation parameter
Conversion from normalized HiC contact matrix ![img](http://latex.codecogs.com/svg.latex?%24C_%7Bij%7D%24) in distance matrix ![img](http://latex.codecogs.com/svg.latex?%24D_%7Bij%7D%24) such that ![img](http://latex.codecogs.com/svg.latex?%24C_%7Bij%7D+%3D+1%2FD_%7Bij%7D%5E%7B%5Calpha%7D+%24) . 
The modification  of the ![img](http://latex.codecogs.com/svg.latex?%24%5Calpha%24) parameter allows to tune the range of contacts to imputes (see  <a href="https://github.com/jbmorlot/ShRec-Exented/blob/master/Imputation%20evolution%20-black-%20with%20alpha%20parameter.avi
">Video Evolution imputation (in black) with alpha </a>)

### Changing the dimensionality reduction algorithm
The MDS allows to reconstruct large distances efficiently, whereas sometimes the short range distances reconstruction 
are needed. The Sammon mapping and other DR (Dimensionality Reduction) algorithms allows to change the reconstruction focus.


[1] Morlot, Jean-Baptiste, Julien Mozziconacci, and Annick Lesne. "Network concepts for analyzing 3D genome structure from chromosomal contact maps." EPJ Nonlinear Biomedical Physics 4.1 (2016): 2. \
[2] Lesne, Annick, et al. "3D genome reconstruction from chromosomal contacts." Nature methods 11.11 (2014): 1141-1143. \
[3] Cournac, Axel, et al. "Normalization of a chromosomal contact map." BMC genomics 13.1 (2012): 436. \
