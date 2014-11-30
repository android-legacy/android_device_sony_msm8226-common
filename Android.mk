LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_BOARD_PLATFORM),msm8226)
    include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
