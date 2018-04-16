CC	=	arm-linux-gnueabihf-gcc
LD	=	arm-linux-gnueabihf-gcc
CFLAGS	=	-g -Wall -O0
LFLAGS	=	

all:phyreg devmem2

clean:
	rm -rf *.o phyreg devmem2

#############################
%:%.o
	$(LD) -o $@ $^ $(LFLAGS)
	
%.o:%.c
	$(CC) -c -o $@ $< $(CFLAGS)