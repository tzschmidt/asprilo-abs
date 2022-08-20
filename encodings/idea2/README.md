# asprilo with abstraction

To increase performance an original instance is abstracted by combining a 2x2 node sets into a single node.
A slightly modified [asprilo solver](https://github.com/potassco/asprilo-encodings) then solves the abstracted instance after which the plan is refined onto the original instance.

Usage: `clingo <instance.lp> abs.lp -c horizon=<time horizon>`

The instance should only contain `init1` atoms. A correct instance can be obtained from a regular instance by using the provided racket script `/tools/prep_instances.rkt`.

Requires the following directory structure:
``` shell
./abs.lp
./solver/encoding.lp
./solver/input.lp
./solver/action-M.lp
./solver/goal-M.lp
./solver/output-M.lp
```

Known limitations:
- connections of type 7,8 cells
- no multiple robots/shelves in one cell