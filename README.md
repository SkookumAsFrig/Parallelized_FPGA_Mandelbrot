# Parallelized FPGA Mandelbrot

![Alt text](Images/mandel1.gif?raw=true "Title")

![Alt text](Images/mandel2.gif?raw=true "Title")

This is a completely custom implementation of the Mandelbrot Set visualization, on the Intel/Altera DE1-SOC Cyclone V FPGA board for VGA output on a 640x480 monitor. It incoporates medium-grained parallelization by dividing the screen into discrete tasks for each Mandelbrot solver, which speeds up the solution significantly. See data below for acceleration results. This was compared against dynamic parallelism using an ad hoc dispatching algorithm, and we found that the static task dispatching worked better because the dynamic dispatching's calculation overhead outweighed the small amount of extra speed-up due to better parallel utilization.

![Alt text](Images/perf_eval.JPG?raw=true "Title")

![Alt text](Images/vshps.JPG?raw=true "Title")

Below are some captured images of different regions of the Mandelbrot Set:

![Alt text](Images/render1.JPG?raw=true "Title")

![Alt text](Images/render2.JPG?raw=true "Title")

![Alt text](Images/render3.JPG?raw=true "Title")

![Alt text](Images/render4.JPG?raw=true "Title")

![Alt text](Images/render5.JPG?raw=true "Title")

![Alt text](Images/render6.JPG?raw=true "Title")

![Alt text](Images/render7.JPG?raw=true "Title")
