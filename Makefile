#
# Makefile for the top.
#
CURRENT = $(shell pwd)
CFLAGS += -I$(CURRENT)/include
SUBDIRS = led adc main


OBJS_DIR = $(CURRENT)/obj
BIN_DIR = $(CURRENT)/bin
OBJS = $(foreach n,$(SUBDIRS),$(n).o) 

export OBJS_DIR BIN_DIR CFLAGS

all: sub myapp
	

sub: 
	$(foreach N,$(SUBDIRS),$(MAKE) -C $(N);)

myapp: 
	echo $(OBJS)
	cd obj && $(CC) -o $@ $(OBJS) && mv myapp $(BIN_DIR)


clean:
	find ./ -name "*.o" -exec rm -f {} +
	$(RM) $(BIN_DIR)/myapp

