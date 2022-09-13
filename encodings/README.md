# Encodings

This directory contains multiple ideas for an implementation of an asprilo solver using abstraction and refinement.

- **Idea 1 (discontinued)**
	+ detect possible abstraction of specific topographies, like tunnels
	+ constrain solver using abstractions
	+ no real refinement required
- **Idea 2**
	+ group all nodes into 2x2 cells
	+ each cell becomes new node in abstracted grid
	+ connections between new nodes are realized through constraints for the solver
	+ refinement required