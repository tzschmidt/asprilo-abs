# Benchmarks

For this project we have created several benchmarks to test, validate and optimize our implementation on.
The benchmarks range over different sizes, layouts and number of agents to cover a wide spectrum of possible scenarios.

The benchmarks 1-5 are smaller sizes, 6-11 medium sizes and the randomly generated instances are the large instances.


## Benchmark descriptions:

benchmark_01: vertex constrain benchmark 

benchmark_02: vertex constrain benchmark

benchmark_03: 4 2x2 rooms with corridors

benchmark_04: vertex constrain benchmark 2

benchmark_05: 2 3x3 rooms with a corridor

benchmark_06: 2 3x3 rooms with a corridor 

benchmark_07: maze consinsting of 2x2 rooms and corridors 

benchmark_08: shelfs

benchmark_09: bigger rooms connected by one corridor

benchmark_10: bigger rooms connected by one corridor with more robots

benchmark_11: 10 robots on 76 nodes

randomly_generated_instances: contains 11 randomly generated instances with different grid sizes and differnt numbers of roboters and shelfs

abstracted_plans: contains images of the abstracted plans for Benchmarks 01-11


## Results

### Non-generated Instances

| Instance | horizon with abstraction | Soving Time (in s) with abstraction | horizon without abstraction | Soving Time (in s) without abstraction |
|---------------|:-----------------:|:-----------------:|:-----------------:|-----------------:|
| B01 | 3 | 0.034 | 5 | 0.008 |
| B02 | 4 | 0.039 | 7 | 0.011 |
| B03 | 3 | 0.037 | 7 | 0.011 |
| B04 | 2 | 0.032 | 4 | 0.007 |
| B05 | 6 | 0.060 | 11 | 0.015|
| B06 | 2 | 0.034 | 4 | 0.008 |
| B07 | X | X | x | X |  
| B08 | X | X | x | X |
| B09 | 2 | 0.040 | 4 | 0.014 |
| B10 | 5 | 0.212 | 4 | 0.014 |
| B11 | X | X | x | X |


### Randomly Generated Instances

| Instance | horizon with abstraction | Soving Time (in s) with abstraction | horizon without abstraction | Soving Time (in s) without abstraction |
|---------------|:-----------------:|:-----------------:|:-----------------:|-----------------:|
| R01_x15_y15 | X | X | X | X |
| R02_x15_y15 | X | X | X | X |
| R03_x15_y15 | X | X | X | X |
| R04_x20_y20 | X | X | X | X |
| R05_x20_y20 | X | X | X | X |
| R06_x20_y20 | X | X | X | X |
| R07_x20_y20 | X | X | x | X |  
| R08_x30_y30 | X | X | x | X |
| R09_x30_y30 | X | X | X | X |
| R10_x30_y30 | X | X | X | X |
| R11_x35_y35 | X | X | x | X |

### Conclusion

Our solver with abstraction is slower then apsrilo. This most likely comes from the abstraction overhead which also scales with the grid size. This is way the time difference between our solver and asprillo grows with the grid size.
