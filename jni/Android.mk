LOCAL_PATH := $(call my-dir)

# include $(CLEAR_VARS)
# LOCAL_MODULE            := xhook
# LOCAL_SRC_FILES         := $(LOCAL_PATH)/libxhook/libs/$(TARGET_ARCH_ABI)/libxhook.so
# LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/libxhook/jni
# include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := dexload
ifeq ($(TARGET_ARCH),x86)
    LOCAL_MODULE    := dexload_x86
endif
ifeq ($(TARGET_ARCH),armeabi-v7a)
    LOCAL_MODULE    := dexload_arm
endif
ifeq ($(TARGET_ARCH),arm64-v8a)
    LOCAL_MODULE    := dexload_a64
endif

LOCAL_C_INCLUDES +=$(LOCAL_PATH)/xhook/
# LOCAL_STATIC_LIBRARIES := static_openssl_crypto
# LOCAL_STATIC_LIBRARIES := static_openssl_ssl
LOCAL_SRC_FILES := packer.cpp  \
     			 hook_instance.cpp \
     			 byte_load.cpp \
     			 utils.cpp \
     			 util.c
LOCAL_SRC_FILES +=aes.c
LOCAL_SRC_FILES  += xhook/xhook.c \
                    xhook/xh_core.c \
                    xhook/xh_elf.c \
                    xhook/xh_jni.c \
                    xhook/xh_log.c \
                    xhook/xh_util.c \
                    xhook/xh_version.c

LOCAL_CFLAGS := -Wall
# LOCAL_CFLAGS +=-fpermissive
LOCAL_CPPFLAGS += -Os
LOCAL_CFLAGS += -Os -DNO_WINDOWS_BRAINDEATH #-Werror-pointer-arith  #-fvisibility=hidden
LOCAL_LDLIBS :=-llog -landroid
# LOCAL_LDLIBS +=$(LOCAL_PATH)/openssl/libcrypto.a
# LOCAL_LDLIBS +=$(LOCAL_PATH)/openssl/libssl.a
include $(BUILD_SHARED_LIBRARY)
