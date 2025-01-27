# Introduction

This repository demonstrates some Finite Difference methods for solving the Poisson problem

```
∇u := u_xx + u_yy = f
```

with periodic boundary conditions in SaC. (Uniform, structured mesh.)

# Files

Each file contains a comment at the top giving some explanation. 
Order of reading:

* `discretize.sac`: shows how to implement a linear approximation for the Laplacian operator.
* `sor_red_black.sac:` successive overrelaxation using red-black order.
