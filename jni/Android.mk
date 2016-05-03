LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := jni
LOCAL_SRC_FILES := jni.cpp 
LOCAL_LDLIBS := -llog -lz

MY_SWIG_PACKAGE := com.apress.swig
MY_SWIG_INTERFACES := Unix.i
# MY_SWIG_TYPE := c 这是封装成c结构体
MY_SWIG_TYPE := cxx
#MY_SWIG_MODE := c++
LOCAL_CPP_FRATURES += rtti
LOCAL_CPP_FEATURES += exceptions
include $(LOCAL_PATH)/my-swig-generate.mk

include $(BUILD_SHARED_LIBRARY)
