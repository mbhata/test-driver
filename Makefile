# Makefile for hello kernel module
obj-m += hello.o

KVERSION := $(shell uname -r)

all:
	$(MAKE) -C /src M=/tmp/build/src modules

clean:
	$(MAKE) -C /src M=/tmp/build/src clean
