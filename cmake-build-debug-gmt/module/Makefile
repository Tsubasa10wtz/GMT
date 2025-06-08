
ifneq ($(KERNELRELEASE),)
	src := /home/tzwang/GMT-main/module
	obj-m := libnvm.o
	libnvm-objs := pci.o list.o ctrl.o map.o
	ccflags-y += -I/home/tzwang/GMT-main/src -I/home/tzwang/GMT-main/src/linux
	KBUILD_EXTRA_SYMBOLS := 
else

.PHONY: default reload unload load clean install

default:
	$(MAKE) -C /lib/modules/5.15.0-107-generic/build M=/home/tzwang/GMT-main/cmake-build-debug-gmt/module modules

clean:
	$(MAKE) -C /lib/modules/5.15.0-107-generic/build M=/home/tzwang/GMT-main/cmake-build-debug-gmt/module clean

reload: unload load

unload:
	-rmmod libnvm.ko

load:
	insmod libnvm.ko max_num_ctrls=64

install: default
	$(MAKE) -C /lib/modules/5.15.0-107-generic/build M=/home/tzwang/GMT-main/cmake-build-debug-gmt/module modules_install
	#$(MAKE) INSTALL_MOD_DIR=libnvm -C /lib/modules/5.15.0-107-generic/build M=/home/tzwang/GMT-main/cmake-build-debug-gmt/module modules_install

endif

