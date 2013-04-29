# Base definitions for Android toolchain.
# This is the only part of the file you need to change before when compiling.

TARGET_ARCH ?= arm
NDK_ROOT = /home/dev/tools/android-ndk-r8e
MAKE += 
#GCC_VERSION = 4.4.3
#GCC_VERSION = 4.6
GCC_VERSION = 4.7
NDK_PLATFORM = platforms/android-14

#For ARM only
#Possible values:armeabi, armeabi-v7a
ARMEABI=armeabi-v7a

################ No modifications below this line are necessary #####################

ifeq ($(TARGET_ARCH),arm)
    EABI = arm-linux-androideabi-$(GCC_VERSION)
    TARGET_ARCH_ABI := $(ARMEABI)
    TOOLCHAIN_PREFIX = arm-linux-androideabi-
else
    EABI = x86-$(GCC_VERSION)
    TARGET_ARCH_ABI = x86
    TOOLCHAIN_PREFIX = i686-linux-android-
endif

TOOLCHAIN_DIR = $(NDK_ROOT)/toolchains/$(EABI)/prebuilt/linux-x86
TOOLCHAIN_PREFIX := $(TOOLCHAIN_DIR)/bin/$(TOOLCHAIN_PREFIX)

LIMBO_JNI_ROOT := $(lastword $(MAKEFILE_LIST))
LIMBO_JNI_ROOT := $(strip $(LIMBO_JNI_ROOT:%android-toolchain.mak=%))
ifeq ($(LIMBO_JNI_ROOT),)
    LIMBO_JNI_ROOT := .
else
    # get rid of trailing slash
    LIMBO_JNI_ROOT := $(LIMBO_JNI_ROOT:%/=%)
endif


# ANDROID NDK TOOLCHAIN, doesn't support hard float so it's slow


CC = $(TOOLCHAIN_PREFIX)gcc
AR = $(TOOLCHAIN_PREFIX)ar
LNK = $(TOOLCHAIN_PREFIX)g++
STRIP = $(TOOLCHAIN_PREFIX)strip
AR_FLAGS = crs
SYS_ROOT = --sysroot=$(NDK_ROOT)/$(NDK_PLATFORM)/arch-$(TARGET_ARCH)
NDK_INCLUDE = $(NDK_ROOT)/$(NDK_PLATFORM)/arch-$(TARGET_ARCH)/usr/include

# INCLUDE_FIXED contains overrides for include files found under the toolchain's /usr/include.
# Hoping to get rid of those one day, when newer NDK versions are released.
INCLUDE_FIXED = $(LIMBO_JNI_ROOT)/include-fixed

# The logutils header is injected into all compiled files in order to redirect
# output to the Android console, and provide debugging macros.
LOGUTILS = $(LIMBO_JNI_ROOT)/logutils.h

USR_LIB = \
-L$(TOOLCHAIN_DIR)//lib

# INCLUDE_FIXED
SYSTEM_INCLUDE = \
    -I$(INCLUDE_FIXED) \
    -I./qemu/linux-headers \
    -I$(TOOLCHAIN_DIR)/$(EABI)/include \
    -I$(NDK_INCLUDE) \
    -include $(LIMBO_JNI_ROOT)/logutils.h

ANDROID_DEBUG_FLAGS = -g 
ANDROID_CFLAGS =

## Use of NDK_DEBUG=1 fails with png lib
ifeq ($(NDK_DEBUG),1)
	# no optimization
    ANDROID_CFLAGS += -O0

    # enable debugging
    ANDROID_CFLAGS +=$(ANDROID_DEBUG_FLAGS)
endif


