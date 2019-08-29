#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/ipc.h> 
#include <sys/shm.h> 
#include <sys/mman.h>
#include <sys/time.h> 
#include <math.h>
#include <time.h>
#include <pthread.h>


int fd;
// video display
#define SDRAM_BASE            0xC0000000
#define SDRAM_END             0xC3FFFFFF
#define SDRAM_SPAN			      0x04000000

#define MOUSE_X_PIO_BASE           0x10
#define MOUSE_Y_PIO_BASE           0x20
#define X_START_PIO_BASE           0x30
#define Y_START_PIO_BASE           0x40
#define X_STEP_PIO_BASE            0x50
#define Y_STEP_PIO_BASE            0x60
#define TIME_BIT_BASE              0x70


#define int2fix27(a) ((signed int)((a)*pow(2,23))) //2^23

volatile unsigned int * mouse_x_ptr = NULL ;
volatile unsigned int * mouse_y_ptr = NULL ;
volatile unsigned int * x_start_ptr = NULL ;
volatile unsigned int * y_start_ptr = NULL ;
volatile unsigned int * x_step_ptr  = NULL ;
volatile unsigned int * y_step_ptr  = NULL ;
volatile unsigned int * timebit_ptr = NULL ;
void *pio_virtual_base;

struct timespec start, stop;
float exe_time = 0.0f;

pthread_mutex_t variable_mutex = PTHREAD_MUTEX_INITIALIZER;

void* exec_time_show()
{
    int timebit_pre = 0;
    int timebit_curr;
    int count = 0;
    clock_gettime( CLOCK_REALTIME, &start);
    while(1){
        timebit_curr = *timebit_ptr;
        if(timebit_curr != timebit_pre){
            count++;
            clock_gettime( CLOCK_REALTIME, &stop);
            if(count == 100){
              exe_time = (stop.tv_sec - start.tv_sec) * 1e6 + (float)(stop.tv_nsec - start.tv_nsec)/1e3;
              printf("Execution Time is %f us\n", exe_time);
              count = 0;
            }
            clock_gettime( CLOCK_REALTIME, &start);
            timebit_pre = timebit_curr; 
         }
    }
}

int main(void)
{
  	
	// === need to mmap: =======================
	// FPGA_CHAR_BASE
	// FPGA_ONCHIP_BASE      
	// HW_REGS_BASE        
  
	// === get FPGA addresses ==================
    // Open /dev/mem
	if( ( fd = open( "/dev/mem", ( O_RDWR | O_SYNC ) ) ) == -1 ) 	{
		printf( "ERROR: could not open \"/dev/mem\"...\n" );
		return( 1 );
	}
 
  pio_virtual_base = mmap( NULL, SDRAM_SPAN, ( PROT_READ | PROT_WRITE ), MAP_SHARED, fd, SDRAM_BASE);	
	if( pio_virtual_base == MAP_FAILED ) {
		printf( "ERROR: mmap3() failed...\n" );
		close( fd );
		return(1);
	}
 
  mouse_x_ptr	=(unsigned int *)(pio_virtual_base + MOUSE_X_PIO_BASE);
  mouse_y_ptr	=(unsigned int *)(pio_virtual_base + MOUSE_Y_PIO_BASE);
  x_start_ptr	=(unsigned int *)(pio_virtual_base + X_START_PIO_BASE);
  y_start_ptr	=(unsigned int *)(pio_virtual_base + Y_START_PIO_BASE);
  x_step_ptr	=(unsigned int *)(pio_virtual_base + X_STEP_PIO_BASE);
  y_step_ptr	=(unsigned int *)(pio_virtual_base + Y_STEP_PIO_BASE);
  timebit_ptr =(unsigned int *)(pio_virtual_base + TIME_BIT_BASE);
  
    int fd, bytes;
    unsigned char data[3];

    const char *pDevice = "/dev/input/mice";

    // Open Mouse
    fd = open(pDevice, O_RDWR);
    if(fd == -1)
    {
        printf("ERROR Opening %s\n", pDevice);
        return -1;
    }

    int left, middle, right;
    int pix_x, pix_y, next_x, next_y;
    signed char x, y;
    pix_x = 319;
    pix_y = 239;
    int x_start, y_start, x_step, y_step;
    
    x_start = -16777216;
    y_start = -8388608;
    x_step  = 39383;
    y_step  = 35025;
    
    int curr_x_step, curr_y_step;
    int curr_x_start, curr_y_start;
    int zoom_level = 0;

    
    curr_x_start = x_start;
    curr_y_start = y_start;
    curr_x_step  = x_step;
    curr_y_step  = y_step;
    
    
    
   	pthread_t exec_time_thread;
	  pthread_create(&exec_time_thread, NULL, exec_time_show, NULL);
	  pthread_detach(exec_time_thread);
     
    while(1)
    {
        
        
        // Read Mouse     
        bytes = read(fd, data, sizeof(data));
        usleep(30000);           
                   
        if(bytes > 0)
        {
            left = data[0] & 0x1;
            right = data[0] & 0x2;
            middle = data[0] & 0x4;

            x = data[1];
            y = data[2];
            pix_x += (int) x;
            pix_y -= (int) y;
            if(pix_x > 639)
                pix_x = 639;
            else if(pix_x < 0)
                pix_x = 0;
            if(pix_y > 479)
                pix_y = 479;
            else if(pix_y < 0)
                pix_y = 0;
            //printf("x=%d, y=%d, left=%d, middle=%d, right=%d\n", pix_x, pix_y, left, middle, right);
            
            if(left == 1){
                next_x = pix_x - 159 < 0 ? 0 : pix_x - 159;
                next_y = pix_y - 119 < 0 ? 0 : pix_y - 119;
                curr_x_start = curr_x_start + next_x * curr_x_step;
                curr_y_start = curr_y_start + next_y * curr_y_step;
                
                zoom_level   = zoom_level + 1; 
                curr_x_step  = x_step >> zoom_level;
                curr_y_step  = y_step >> zoom_level;
            }else if (right == 2 && zoom_level > 0){
                next_x       = curr_x_start + pix_x * curr_x_step;
                next_y       = curr_y_start + pix_y * curr_y_step;
                zoom_level   = zoom_level - 1;
                curr_x_step  = x_step >> zoom_level;
                curr_y_step  = y_step >> zoom_level;
                curr_x_start = (next_x - 319 * curr_x_step) < x_start ? x_start : (next_x - 319 * curr_x_step);
                curr_y_start = (next_y - 239 * curr_y_step) < y_start ? y_start : (next_y - 239 * curr_y_step);
                if(zoom_level == 0){
			curr_x_start = x_start;
			curr_y_start = y_start;
		}
                
            }
            
            *mouse_x_ptr = pix_x;
            *mouse_y_ptr = pix_y;
            *x_start_ptr = curr_x_start;
            *y_start_ptr = curr_y_start;
            *x_step_ptr  = curr_x_step;
            *y_step_ptr  = curr_y_step;
        }   
    }
    
    return 0;
}
 
