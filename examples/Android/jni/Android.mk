LOCAL_PATH := $(call my-dir)  
 
include $(CLEAR_VARS)    
OpenCV_INSTALL_MODULES:=on
OPENCV_CAMERA_MODULES:=off
OPENCV_LIB_TYPE:= SHARE
LOCAL_CPP_EXTENSION := .cc
include /home/jaychou/Downloads/OpenCV-android-sdk/sdk/native/jni/OpenCV.mk

LOCAL_MODULE  := caffe_p
LOCAL_SRC_FILES  := cnnInterface.cpp , common.cpp
LOCAL_LDLIBS += -lm -llog 


LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../../
LOCAL_C_INCLUDES += /home/jaychou/Downloads/OpenCV-android-sdk/sdk/native/jni/include

include $(BUILD_SHARED_LIBRARY)

 