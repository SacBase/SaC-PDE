# Introduction

This repository demonstrates some Finite Difference methods for solving the Poisson problem

```
∇u := u_xx + u_yy = f
```

with periodic boundary conditions in SaC. (Uniform, structured mesh.)

# Files

Each file contains a comment at the top giving some explanation. We use 
red-black order, which is illustrated in `red_black_reorder_2d.sac`. 
We are working towards a Full Multigrid method, which is a combination of
other techniques. In order:

* `discretize_rb.sac`: shows how to implement a linear approximation for the Laplacian operator.
* `sor_red_black.sac:` successive overrelaxation using red-black order. Complexity O(n^3 log(n))
* `v_cycle_rb.sac:` V-cycle, complexity O(n^2 log(n))
* `fmg_rb.sac:` Full multigrid, complexity O(n^2).
