# Introduction

This repository demonstrates some Finite Difference methods for solving the Poisson problem

```
∇u := u_xx + u_yy = f
```

with Dirichlet boundary conditions in SaC. (Uniform, structured mesh.)

# Files

Each file contains a comment at the top giving some explanation. 
Order of reading:

* `discretize.sac`: shows how to implement a linear approximation for the Laplacian operator.
* `sor.sac`: ugly, C-style implementation of successive overrelaxation.
* `red_black_sor.sac:` ugly, C-style implementation of successive overrelaxation, red-black variant (parallelises).
* `sor_sac_way.sac:` The same as `red_black_sor`, but programmed in a way that is more idiomatic for SaC.
