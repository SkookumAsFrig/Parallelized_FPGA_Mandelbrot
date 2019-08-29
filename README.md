# Parallelized FPGA Mandelbrot

![Alt text](Images/mandel1.gif?raw=true "Title")

![Alt text](Images/mandel2.gif?raw=true "Title")

This is a completely custom implementation of the Mandelbrot Set visualization, on the Intel/Altera DE1-SoC Cyclone V FPGA board for VGA output on a 640x480 monitor. It incoporates medium-grained parallelization by dividing the screen into discrete tasks for each Mandelbrot solver, which speeds up the solution significantly. See data below for acceleration results. This was compared against dynamic parallelism using an ad hoc dispatching algorithm, and we found that the static task dispatching worked better because the dynamic dispatching's calculation overhead outweighed the small amount of extra speed-up due to better parallel utilization.

![Alt text](Images/perf_eval.JPG?raw=true "Title")

![Alt text](Images/vshps.JPG?raw=true "Title")

The solver design can be explained by the two diagrams below:

![Alt text](Images/solver_design.png?raw=true "Title")

![Alt text](Images/parallel_design.png?raw=true "Title")

We also encoded static optimizations in the form of inscribed rectangles to reduce calculations, shown below:

![Alt text](Images/rectangle_optimize.jpg?raw=true "Title")

The number of iterations for the Mandelbrot algorithm can be dynamically selected in system runtime with the DE1-SoC's 10 switches, which represent the binary encoding for that number, range 0 to 1024. The color scheme is a custom implemented version of Altera's VGA Subsystem University Graphics IP, which resulted in a high constrast and detailed visualization that emphasizes the red tone.

Below are some captured images of different regions of the Mandelbrot Set:

![Alt text](Images/render2.jpg?raw=true "Title")

![Alt text](Images/render3.jpg?raw=true "Title")

![Alt text](Images/render4.jpg?raw=true "Title")

![Alt text](Images/render5.jpg?raw=true "Title")

![Alt text](Images/render6.jpg?raw=true "Title")

![Alt text](Images/render1.jpg?raw=true "Title")

![Alt text](Images/render7.jpg?raw=true "Title")
