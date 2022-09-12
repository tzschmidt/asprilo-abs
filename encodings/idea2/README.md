# asprilo with abstraction

To increase performance an original instance is abstracted by combining a 2x2 node sets into a single node.
A slightly modified [asprilo solver](https://github.com/potassco/asprilo-encodings) then solves the abstracted instance 
after which the plan is refined onto the original instance. To do so, 3 time steps are guarenteed for each robot at each 
cell, which naturally results in a longer solution.

Usage: `clingo abs.lp <instance.lp> -c horizon=<time horizon>`
The time horizon describes the time limit for the solver on the abstracted instance. The real time horizon will be 3x+2, 
where x is the given time horizon.

The instance should only contain `init1` atoms. A correct instance can be obtained from a regular instance by using the 
provided racket script `/tools/prep_instances.rkt`, which performs a simple search and replace.

Requires the following directory structure:
``` shell
./abs.lp
./ref.lp
./solver/encoding.lp
./solver/input.lp
./solver/action-M.lp
./solver/goal-M.lp
./solver/output-M.lp
```

Known limitations:
- instances with "diagonal" walls should be avoided and replaced with "connected" walls, as they can result in incorrect plans
- no multiple robots/shelves in one cell

## Results

| Instance | w/ abs horizon (ref) | w/ abs Solving Time (in s) | w/o abs horizon | w/o abs Solving Time (in s) |
|:--------:|:--------------------:|:--------------------------:|:---------------:|----------------------------:|
| B01 | 3 (11) | 0.034 | 5  | 0.008 |
| B02 | 4 (14) | 0.039 | 7  | 0.011 |
| B03 | 3 (11) | 0.037 | 7  | 0.011 |
| B04 | 2 (8)  | 0.032 | 4  | 0.007 |
| B05 | 6 (20) | 0.060 | 11 | 0.015 |
| B06 | 2 (8)  | 0.034 | 4  | 0.008 |
| B07 | TBD    | TBD   | TBD | TBD  |
| B08 | 8 (26) | 0.337 | 14 | 0.048 |
| B09 | 2 (8)  | 0.040 | 4  | 0.014 |
| B10 | 5 (17) | 0.212 | 9  | 0.038 |
| B11 | 6 (20) | 0.637 | 12 | 0.092 |

| Instance | w/ abs horizon (ref) | w/ abs Solving Time (in s) | w/o abs horizon | w/o abs Solving Time (in s) |
|:--------:|:--------------------:|:--------------------------:|:---------------:|----------------------------:|
| R20x20r15n1 | 7 (23) | 7.417 | 13 | 0.444 |

## Conclusion

Our encoding using abstraction and refinement can solve most instances correctly (see known limitations). Compared to the native asprilo 
encoding our encoding performs slightly worse on smaller benchmarks but significantly worse on bigger ones. This is due
to the fact, that the abstraction and refinement is a quite demanding task, which scales with the size of the instance.
That means the complexity of the abstraction and refinement rises faster than the complexity of the 
path finding problem itself. As we only dipped our toes into the thematic of abstraction and refinement with this project,
we strongly believe our solution can definitely be improved, if more time is invested into it.