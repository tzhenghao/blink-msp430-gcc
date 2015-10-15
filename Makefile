# Zheng Hao Tan
# Makefile for the blink application.
# Type 'make' and then whatever that follows to compile the code.

OBJECTS=blink.o
DEVICE=msp430g2553
CC=msp430-elf-gcc
GDB=msp430-elf-gdb
SUPPORT_FILE_DIRECTORY=~/toolchains/ti/gcc/include

CFLAGS = -I $(SUPPORT_FILE_DIRECTORY) -mmcu=$(DEVICE) -O2 -g
LFLAGS = -L $(SUPPORT_FILE_DIRECTORY)

all: ${OBJECTS}
	$(CC) $(CFLAGS) $(LFLAGS) $? -o $(DEVICE).out

# make clean - remove .o files and the executable file.
clean:
	rm -f *.o $(DEVICE).hex $(DEVICE).elf

# That's all folks!
