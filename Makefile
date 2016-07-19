obj-m += hello-1.o

CCPREFIX=/home/justin/rpi/tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin/arm-linux-gnueabihf-

all: 
	make ARCH=arm CROSS_COMPILE=${CCPREFIX} -C /home/justin/rpi/linux M=$(PWD) modules

clean: 
	make -C /home/cowboy/rpi/linux-rpi-3.2.27 M=$(PWD) clean