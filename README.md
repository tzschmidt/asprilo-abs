# asprilo-abs

## About

To improve performance and scalability when solving Multi-Agent Pathfinding ([MAPF](https://en.wikipedia.org/wiki/Multi-agent_pathfinding)) we introduce abstraction.
...


### Build with

As basis and benchmark framework we use [asprilo](https://asprilo.github.io/).
Asprilo supports many benchmark scenarios, but for the sake of simplicity we will focus on the m-domain of the instances, so only on the movement of the agents/robots.
Further implementations will be done with Python or Anser Set Programming, specifically [clingo](https://potassco.org/clingo/).


## Directory Structure WIP

- './encodings/' contains all encodings for our solver
- './instances/benchmarks/' contains benchmark instances which are used for testing the encodings
- './tools/' contains utility tools
- './examples/' contains example files for our tools
