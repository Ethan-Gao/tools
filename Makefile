CC	=	arm-linux-gnueabihf-gcc
LD	=	arm-linux-gnueabihf-gcc
CFLAGS	=	-g -Wall -O0
LFLAGS	=	

all:phyreg devmem2 devkmem cron

clean:
	rm -rf *.o phyreg devmem2 devkmem
	make -C cron-3.0pl1.orig clean

#############################
%:%.o
	$(LD) -o $@ $^ $(LFLAGS)
	
%.o:%.c
	$(CC) -c -o $@ $< $(CFLAGS)

cron:
	make -C cron-3.0pl1.orig all
