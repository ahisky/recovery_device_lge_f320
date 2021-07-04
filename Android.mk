# Copyright 2021 HexagonWin
# Licensed under the Apache License, Version 2.0

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),f320)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
