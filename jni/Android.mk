LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := jni
LOCAL_SRC_FILES := jni.cpp 
LOCAL_LDLIBS := -llog -lz

MY_SWIG_PACKAGE := com.apress.swig
MY_SWIG_INTERFACES := Unix.i
MY_SWIG_TYPE := c
##MY_SWIG_MODE := c

include $(LOCAL_PATH)/my-swig-generate.mk

include $(BUILD_SHARED_LIBRARY)
