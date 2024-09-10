ifeq ($(KERNEL_SRC),)
    KERNEL_SRC ?= /lib/modules/$(shell uname -r)/build
    KERNEL_SRC_AUTO := true
endif
MAKE_ARGS := -C $(KERNEL_SRC) M=$(shell pwd)/wireguard-quic

all: modules

modules:
ifeq ($(KERNEL_SRC_AUTO),true)
	echo Building for the currently installed kernel! >&2
endif
	$(MAKE) $(MAKE_ARGS) modules

modules_install:
	$(MAKE) $(MAKE_ARGS) modules_install

install: modules modules_install
	depmod

clean:
	$(MAKE) $(MAKE_ARGS) clean
