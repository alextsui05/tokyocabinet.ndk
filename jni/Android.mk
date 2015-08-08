LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := libz
LOCAL_SRC_FILES := \
	zlib-1.2.8/adler32.c \
	zlib-1.2.8/compress.c \
	zlib-1.2.8/crc32.c \
	zlib-1.2.8/deflate.c \
	zlib-1.2.8/gzclose.c \
	zlib-1.2.8/gzlib.c \
	zlib-1.2.8/gzread.c \
	zlib-1.2.8/gzwrite.c \
	zlib-1.2.8/infback.c \
	zlib-1.2.8/inffast.c \
	zlib-1.2.8/inflate.c \
	zlib-1.2.8/inftrees.c \
	zlib-1.2.8/trees.c \
	zlib-1.2.8/uncompr.c \
	zlib-1.2.8/zutil.c
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE        	:= libtokyocabinet
LOCAL_SRC_FILES     	:= \
	tokyocabinet/tcutil.c \
	tokyocabinet/tchdb.c \
	tokyocabinet/tcbdb.c \
	tokyocabinet/tcfdb.c \
	tokyocabinet/tctdb.c \
	tokyocabinet/tcadb.c \
	tokyocabinet/myconf.c \
	tokyocabinet/md5.c \
	tokyocabinet/glob.c
LOCAL_CFLAGS        	:= -std=c99 -D_MYNOBZIP
LOCAL_C_INCLUDES	+= tokyocabinet
#LOCAL_SHARED_LIBRARIES	+= libz
LOCAL_STATIC_LIBRARIES	+= libz
LOCAL_MODULE_TAGS 	:= optional
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE        	:= libjtokyocabinet
LOCAL_SRC_FILES     	:= \
	tokyocabinet-java-1.24/adb.c \
	tokyocabinet-java-1.24/bdb.c \
	tokyocabinet-java-1.24/bdbcur.c \
	tokyocabinet-java-1.24/fdb.c \
	tokyocabinet-java-1.24/hdb.c \
	tokyocabinet-java-1.24/myconf.c \
	tokyocabinet-java-1.24/tdb.c \
	tokyocabinet-java-1.24/tdbqry.c \
	tokyocabinet-java-1.24/util.c
LOCAL_CFLAGS := -std=c99
LOCAL_C_INCLUDES += tokyocabinet
LOCAL_SHARED_LIBRARIES += libtokyocabinet
include $(BUILD_SHARED_LIBRARY)
