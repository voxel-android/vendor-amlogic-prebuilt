
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := IpRemote.apk
LOCAL_SRC_FILES := IpRemote.apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_REQUIRED_MODULES := com.google.android.tv.jar \
                          libuinputbridge.so
LOCAL_MODULE_PATH := $(TARGET_OUT)/app
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := Discovery.apk
LOCAL_SRC_FILES := Discovery.apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_REQUIRED_MODULES := com.google.android.tv.jar \
                          libuinputbridge.so
LOCAL_MODULE_PATH := $(TARGET_OUT)/app
include $(BUILD_PREBUILT)
# ============================================================
include $(CLEAR_VARS)

#LOCAL_STATIC_JAVA_LIBRARIES := libremote

LOCAL_MODULE := com.google.android.tv.jar

LOCAL_MODULE_TAGS := optional

LOCAL_MODULE_CLASS := JAVA_LIBRARIES

# This will install the file in /system/framework
LOCAL_MODULE_PATH := $(TARGET_OUT_JAVA_LIBRARIES)

LOCAL_SRC_FILES := $(LOCAL_MODULE)

LOCAL_REQUIRED_MODULES := com.google.android.tv.v1.xml

include $(BUILD_PREBUILT)

# ====  permissions ========================
include $(CLEAR_VARS)

LOCAL_MODULE := com.google.android.tv.v1.xml

LOCAL_MODULE_TAGS := optional

LOCAL_MODULE_CLASS := ETC

# This will install the file in /system/etc/permissions
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/permissions

LOCAL_SRC_FILES := $(LOCAL_MODULE)

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libuinputbridge.so
LOCAL_SRC_FILES := libuinputbridge.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT)/lib
include $(BUILD_PREBUILT)


#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/com.google.android.tv.v1.xml:system/etc/permissions/com.google.android.tv.v1.xml \
#    $(LOCAL_PATH)/com.google.android.tv.jar:system/framework/com.google.android.tv.jar \
#    $(LOCAL_PATH)/libuinputbridge.so:system/lib/libuinputbridge.so
