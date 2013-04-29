# COMMON VARS
GLIB_ADTNL_DEFS = \
		-DHAVE_CONFIG_H \
        -DSUPPORT_UCP \
        -DSUPPORT_UTF8 \
        -DNEWLINE=-1 \
        -DMATCH_LIMIT=10000000 \
        -DMATCH_LIMIT_RECURSION=8192 \
        -DMAX_NAME_SIZE=32 \
        -DMAX_NAME_COUNT=10000 \
        -DMAX_DUPLENGTH=30000 \
        -DLINK_SIZE=2 \
        -DPOSIX_MALLOC_THRESHOLD=10 \
        -DPCRE_STATIC \
        -DG_DISABLE_CAST_CHECKS \
        -DG_DISABLE_DEPRECATED \
        -DGLIB_COMPILATION \
	-DGOBJECT_COMPILATION \
	-DLIBDIR="\".\"" \
	-DLINK_SIZE=2

LOCAL_PATH=.
###########



### ICONV
ICONV_INC= \
	-I$(LOCAL_PATH)/iconv \
	-I$(LOCAL_PATH)/iconv/lib \
	-I$(LOCAL_PATH)/iconv/include \
	-I$(LOCAL_PATH)/iconv/srclib

ICONV_SRC_FILES= \
./iconv/libcharset/lib/localcharset.c \
./iconv/libcharset/lib/relocatable.c \
./iconv/lib/iconv.c

## GLIB
GLIB_INC=-I$(LOCAL_PATH)/glib/glib \
	-I$(LOCAL_PATH)/glib \
	-I$(LOCAL_PATH)/glib/gmodule \
	-I$(LOCAL_PATH)/glib/gio \
	-I$(LOCAL_PATH)/iconv/include

## GLIB
GLIB_SYSTEM_INC=-I/usr/include/glib-2.0 \
	-I/usr/lib/glib-2.0/include

GLIB_SRC_FILES = \
./glib/gio/xdgmime/xdgmimealias.c \
./glib/gio/xdgmime/xdgmimeparent.c \
./glib/gio/xdgmime/xdgmimemagic.c \
./glib/gio/xdgmime/xdgmimeglob.c \
./glib/gio/xdgmime/xdgmimeint.c \
./glib/gio/xdgmime/xdgmime.c \
./glib/gio/xdgmime/xdgmimecache.c \
./glib/gio/gvfs.c \
./glib/gio/glocalfilemonitor.c \
./glib/gio/gsimpleasyncresult.c \
./glib/gio/glocalfileenumerator.c \
./glib/gio/gfileattribute.c \
./glib/gio/gunixoutputstream.c \
./glib/gio/gio-marshal.c \
./glib/gio/gfileenumerator.c \
./glib/gio/gbufferedinputstream.c \
./glib/gio/gunixmount.c \
./glib/gio/gfileoutputstream.c \
./glib/gio/gfilemonitor.c \
./glib/gio/gnativevolumemonitor.c \
./glib/gio/gdataoutputstream.c \
./glib/gio/gcancellable.c \
./glib/gio/gpollfilemonitor.c \
./glib/gio/gseekable.c \
./glib/gio/gmemoryoutputstream.c \
./glib/gio/glocalfileinputstream.c \
./glib/gio/gvolume.c \
./glib/gio/gmountoperation.c \
./glib/gio/ginputstream.c \
./glib/gio/goutputstream.c \
./glib/gio/gfilteroutputstream.c \
./glib/gio/gunixvolumemonitor.c \
./glib/gio/gunixinputstream.c \
./glib/gio/gfilterinputstream.c \
./glib/gio/gunixmounts.c \
./glib/gio/gthemedicon.c \
./glib/gio/gdummyfile.c \
./glib/gio/glocalfileoutputstream.c \
./glib/gio/gfileicon.c \
./glib/gio/giomodule.c \
./glib/gio/gasynchelper.c \
./glib/gio/glocaldirectorymonitor.c \
./glib/gio/gdesktopappinfo.c \
./glib/gio/gbufferedoutputstream.c \
./glib/gio/gioerror.c \
./glib/gio/glocalfile.c \
./glib/gio/gmount.c \
./glib/gio/glocalvfs.c \
./glib/gio/gfileinputstream.c \
./glib/gio/gioaliasdef.c \
./glib/gio/gfile.c \
./glib/gio/gfilenamecompleter.c \
./glib/gio/gunionvolumemonitor.c \
./glib/gio/gcontenttype.c \
./glib/gio/gdatainputstream.c \
./glib/gio/gloadableicon.c \
./glib/gio/gioscheduler.c \
./glib/gio/gvolumemonitor.c \
./glib/gio/gmemoryinputstream.c \
./glib/gio/gfileinfo.c \
./glib/gio/gappinfo.c \
./glib/gio/gicon.c \
./glib/gio/gdrive.c \
./glib/gio/gunixvolume.c \
./glib/gio/gioenumtypes.c \
./glib/gio/gasyncresult.c \
./glib/gio/inotify/ginotifydirectorymonitor.c \
./glib/gio/inotify/inotify-missing.c \
./glib/gio/inotify/inotify-kernel.c \
./glib/gio/inotify/inotify-helper.c \
./glib/gio/inotify/inotify-path.c \
./glib/gio/inotify/inotify-diag.c \
./glib/gio/inotify/inotify-sub.c \
./glib/gio/inotify/ginotifyfilemonitor.c \
./glib/gmodule/gmodule.c \
./glib/glib/libcharset/localcharset.c \
./glib/glib/gunibreak.c \
./glib/glib/gmarkup.c \
./glib/glib/gunicollate.c \
./glib/glib/gdir.c \
./glib/glib/gprimes.c \
./glib/glib/gmem.c \
./glib/glib/gatomic.c \
./glib/glib/gdataset.c \
./glib/glib/gutf8.c \
./glib/glib/glist.c \
./glib/glib/goption.c \
./glib/glib/gbase64.c \
./glib/glib/grand.c \
./glib/glib/gtestutils.c \
./glib/glib/gbookmarkfile.c \
./glib/glib/giochannel.c \
./glib/glib/gspawn.c \
./glib/glib/gstring.c \
./glib/glib/gsequence.c \
./glib/glib/gbacktrace.c \
./glib/glib/giounix.c \
./glib/glib/gurifuncs.c \
./glib/glib/gtimer.c \
./glib/glib/gmappedfile.c \
./glib/glib/gregex.c \
./glib/glib/ghash.c \
./glib/glib/gshell.c \
./glib/glib/gqsort.c \
./glib/glib/gerror.c \
./glib/glib/gunidecomp.c \
./glib/glib/gchecksum.c \
./glib/glib/gcompletion.c \
./glib/glib/gpattern.c \
./glib/glib/gstrfuncs.c \
./glib/glib/gtree.c \
./glib/glib/gmain.c \
./glib/glib/gprintf.c \
./glib/glib/gstdio.c \
./glib/glib/gslice.c \
./glib/glib/gslist.c \
./glib/glib/ghook.c \
./glib/glib/gkeyfile.c \
./glib/glib/garray.c \
./glib/glib/gasyncqueue.c \
./glib/glib/gscanner.c \
./glib/glib/grel.c \
./glib/glib/guniprop.c \
./glib/glib/gthread.c \
./glib/glib/gdate.c \
./glib/glib/gconvert.c \
./glib/glib/gnode.c \
./glib/glib/gmessages.c \
./glib/glib/gfileutils.c \
./glib/glib/gcache.c \
./glib/glib/gutils.c \
./glib/glib/gthreadpool.c \
./glib/glib/gqueue.c \
./glib/glib/pcre/pcre_get.c \
./glib/glib/pcre/pcre_maketables.c \
./glib/glib/pcre/pcre_chartables.c \
./glib/glib/pcre/pcre_ucp_searchfuncs.c \
./glib/glib/pcre/pcre_exec.c \
./glib/glib/pcre/pcre_newline.c \
./glib/glib/pcre/pcre_globals.c \
./glib/glib/pcre/pcre_study.c \
./glib/glib/pcre/pcre_valid_utf8.c \
./glib/glib/pcre/pcre_tables.c \
./glib/glib/pcre/pcre_dfa_exec.c \
./glib/glib/pcre/pcre_refcount.c \
./glib/glib/pcre/pcre_config.c \
./glib/glib/pcre/pcre_xclass.c \
./glib/glib/pcre/pcre_try_flipped.c \
./glib/glib/pcre/pcre_info.c \
./glib/glib/pcre/pcre_fullinfo.c \
./glib/glib/pcre/pcre_compile.c \
./glib/glib/pcre/pcre_version.c \
./glib/glib/pcre/pcre_ord2utf8.c \
./glib/gobject/gvaluearray.c \
./glib/gobject/gtypeplugin.c \
./glib/gobject/gboxed.c \
./glib/gobject/gsourceclosure.c \
./glib/gobject/gvaluetransform.c \
./glib/gobject/gparam.c \
./glib/gobject/gclosure.c \
./glib/gobject/gtype.c \
./glib/gobject/genums.c \
./glib/gobject/gsignal.c \
./glib/gobject/gobject.c \
./glib/gobject/gvalue.c \
./glib/gobject/gparamspecs.c \
./glib/gobject/gvaluetypes.c \
./glib/gobject/gtypemodule.c \
./glib/gthread/gthread-impl.c \
./glib/gio/glocalfileinfo.c

LOCAL_CFLAGS    :=
LOCAL_SRC_FILES :=

###############################

### CONFIGURATIONS

include android-toolchain.mak
include android-device-config.mak

ifeq ($(TARGET_ARCH), arm)
    LOCAL_CFLAGS = -DG_ATOMIC_ARM
else
    LOCAL_CFLAGS = -DG_ATOMIC_I486
endif

# ORIGINAL CFLAGS FROM ANDROID NDK
#-D__ARM_ARCH_5__ -D__ARM_ARCH_5T__ -D__ARM_ARCH_5E__ -D__ARM_ARCH_5TE__  \
#-march=armv5te -mtune=xscale -msoft-float -mthumb \
#-Os
#-fpic -ffunction-sections -funwind-tables -fstack-protector \
#-Wno-psabi
#-fomit-frame-pointer -fno-strict-aliasing -finline-limit=64

ANDROID_CFLAGS:= $(ANDROID_CFLAGS) -I. -DANDROID

CUSTOM_ANDROID_CFLAGS = -Wa,--noexecstack \
	$(SYSTEM_INCLUDE)

CFILES:=
ICONV_CFILES:= $(ICONV_SRC_FILES)
GLIB_CFILES:= $(GLIB_SRC_FILES)


OBJS=$(CFILES:%.c=%.o)
GLIB_OBJS=$(GLIB_CFILES:%.c=%.o)
ICONV_OBJS=$(ICONV_CFILES:%.c=%.o)


LIBGLIB = ../obj/local/$(TARGET_ARCH_ABI)/libglib.a
LIBICONV = ../obj/local/$(TARGET_ARCH_ABI)/libiconv.a

all: $(OBJS) \
	$(ICONV_OBJS) \
	libiconv \
	$(GLIB_OBJS) \
	libglib 

# Target specific variable to use different flags
$(GLIB_OBJS): EXTRA_FLAGS:= $(GLIB_INC) $(GLIB_ADTNL_DEFS)
$(ICONV_OBJS): EXTRA_FLAGS:= $(ICONV_INC) $(GLIB_ADTNL_DEFS)

ANDROID_CFLAGS_NOOPTIM=$(filter-out -O%,$(ANDROID_CFLAGS) )

# Don't need this since we use sigaltstack
#glib/glib/gmem.o: glib/glib/gmem.c
#	@echo "   [Compiling1] " $<
#	$(CC) $(CFLAGS) $(EXTRA_DEFS) $(ARCH_CFLAGS) $(LOCAL_CFLAGS) $(EXTRA_FLAGS) $(ANDROID_CFLAGS_NOOPTIM) $(CUSTOM_ANDROID_CFLAGS) -o $@ -c $<


%.o: %.c
	@echo "   [Compiling] " $<
	$(CC) $(CFLAGS) $(EXTRA_DEFS) $(ARCH_CFLAGS) $(LOCAL_CFLAGS) $(EXTRA_FLAGS) $(ANDROID_CFLAGS) $(CUSTOM_ANDROID_CFLAGS) -o $@ -c $<

clean:
	-rm \
	$(OBJS) \
	$(GLIB_OBJS) \
	$(ICONV_OBJS) \
	$(LIBICONV) \
	$(LIBGLIB)

veryclean:
	-find . -name *.o -exec rm -rf {} \;
	-find . -name *.a -exec rm -rf {} \;
	-find . -name *.d -exec rm -rf {} \;

libiconv:
	$(AR) $(AR_FLAGS) \
	$(LIBICONV) \
	$(ICONV_OBJS)


libglib:
	$(AR) $(AR_FLAGS) \
	$(LIBGLIB) \
	$(GLIB_OBJS)
### end of glib
