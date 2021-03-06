export ARCHS = armv7 arm64 arm64e

include $(THEOS)/makefiles/common.mk

LIBRARY_NAME = libmryipc
libmryipc_FILES = MRYIPCCenter.m
libmryipc_CFLAGS = -fobjc-arc
ADDITIONAL_CFLAGS = -DTHEOS_LEAN_AND_MEAN

include $(THEOS_MAKE_PATH)/library.mk

internal-stage::
	mkdir -p usr/lib
	cp $(THEOS_STAGING_DIR)/usr/lib/libmryipc.dylib usr/lib/libmryipc.dylib