LOCAL_PATH:=$(call my-dir)

include $(CLEAR_VARS)
OpenCV_INSTALL_MODULES := on
OpenCV_CAMERA_MODULES := off
OPENCV_LIB_TYPE :=STATIC

ifeq ("$(wildcard $(OPENCV_MK_PATH))","")
include $(LOCAL_PATH)/native/jni/OpenCV.mk
else
include $(OPENCV_MK_PATH)
endif
LOCAL_MODULE := OpenCV
LOCAL_SRC_FILES := com_magicing_eigenndk_NDKUtils.cpp
LOCAL_LDLIBS +=  -lm -llog
include $(BUILD_SHARED_LIBRARY)

