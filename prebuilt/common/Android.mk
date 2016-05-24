LOCAL_PATH := $(call my-dir)

# a wrapper for curl which provides wget syntax, for compatibility
include $(CLEAR_VARS)
LOCAL_MODULE := wget
LOCAL_SRC_FILES := bin/wget
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)

LOCAL_MODULE := Viper4Android
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MULTILIB := both
LOCAL_CERTIFICATE := $(DEFAULT_SYSTEM_DEV_CERTIFICATE)

LOCAL_MODULE_TARGET_ARCH := arm x86
my_src_arch := $(call get-prebuilt-src-arch,$(LOCAL_MODULE_TARGET_ARCH))
LOCAL_SRC_FILES := app/Viper4Android/Viper4Android.apk

LOCAL_PREBUILT_JNI_LIBS_arm := @lib/armeabi/libV4AJniUtils.so
LOCAL_PREBUILT_JNI_LIBS_x86 := @lib/x86/libV4AJniUtils.so
include $(BUILD_PREBUILT)
