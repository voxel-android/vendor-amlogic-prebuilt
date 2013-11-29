LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := preinstall.sh
LOCAL_SRC_FILES := preinstall.sh
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/bin
include $(BUILD_PREBUILT)


manager_apk := $(patsubst $(LOCAL_PATH)/%,%,$(wildcard $(LOCAL_PATH)/*.apk))

$(foreach t,$(manager_apk), \
$(eval include $(CLEAR_VARS)) \
$(eval LOCAL_MODULE     := $(notdir $(t))) \
$(eval LOCAL_MODULE_TAGS := optional) \
$(eval LOCAL_MODULE_CLASS := ETC) \
$(eval LOCAL_MODULE_PATH := $(TARGET_OUT)/preinstall) \
$(eval LOCAL_SRC_FILES   := $(t)) \
$(eval LOCAL_CERTIFICATE := shared) \
$(eval include $(BUILD_PREBUILT)) \
)

$(LOCAL_INSTALLED_MODULE): $(notdir $(manager_apk))
