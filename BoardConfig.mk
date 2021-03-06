# Copyright 2021 hexagonwin
# licensed under the apache license v2.0

TARGET_SPECIFIC_HEADER_PATH += device/lge/f320/include

# Kernel related things.
TARGET_KERNEL_CONFIG := shrp_f320_defconfig
G2_DTS_TARGET := msm8974-g2-kr

BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := androidboot.hardware=g2
BOARD_KERNEL_IMAGE_NAME := zImage
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x05000000 --tags_offset 0x00000100
TARGET_KERNEL_SOURCE := kernel/lge/g2_shrp

# Board, AP etc things
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_BOARD_PLATFORM_GPU := qcom-adreno330
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := krait

TARGET_BOOTLOADER_BOARD_NAME :=
TARGET_BOARD_PLATFORM := msm8974

TARGET_NO_BOOTLOADER := true

# Partition and nand infos.
# From LineageOS G2 common tree
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216 # 16.7M
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 838860800 # 830M
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432 # 33.6M
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216 # 16.7M
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 26578048
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560 # 2.5G (actually 2.75, but leave room for model variation)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13725837312 # 12.8G (its much larger, but this is enough for now)

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USERIMAGES_USE_EXT4 := true

BOARD_USES_QCOM_HARDWARE := true

BOARD_CUSTOM_BOOTIMG_MK := device/lge/f320/mkbootimg.mk

# SHRP Flags start from here 
SHRP_PATH := device/lge/f320
SHRP_MAINTAINER := HexagonWin
SHRP_DEVICE_CODE := f320
SHRP_EDL_MODE := 0
SHRP_EXTERNAL := /external_sdcard
SHRP_INTERNAL := /sdcard
SHRP_OTG := /usb-otg

SHRP_FLASH := 0
SHRP_REC := /dev/block/platform/msm_sdcc.1/by-name/recovery

SHRP_REC_TYPE := normal
SHRP_DEVICE_TYPE := A_Only

#SHRP_LITE := true

#Disable mouse cursor
TW_INPUT_BLACKLIST := "hbtp_vm"
#SHRP flags end here

# Teamwin configs start here
DEVICE_RESOLUTION 		:= 1080x1920
TW_THEME 			:= portrait_hdpi
TW_DEFAULT_EXTERNAL_STORAGE	:= true
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
TARGET_RECOVERY_PIXEL_FORMAT 	:= "RGBX_8888"
TARGET_RECOVERY_FSTAB := device/lge/f320/fstab.g2
BOARD_HAS_LARGE_FILESYSTEM 	:= true
TW_NO_USB_STORAGE		:= true
TW_CRYPTO_FS_TYPE		:= "ext4"
TARGET_RECOVERY_QCOM_RTC_FIX 	:= true
BOARD_SUPPRESS_SECURE_ERASE 	:= true
BOARD_SUPPRESS_EMMC_WIPE	:= true
RECOVERY_SDCARD_ON_DATA		:= true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_EXTRA_LANGUAGES 		:= true
TW_DEFAULT_EXTERNAL_STORAGE 	:= true
TW_INCLUDE_JB_CRYPTO 		:= true
TW_INCLUDE_CRYPTO 		:= true
TW_BRIGHTNESS_PATH 		:= "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS 		:= 255
TW_DEFAULT_BRIGHTNESS 		:= 175
TARGET_USES_LOGD 		:= true
TW_SCREEN_BLANK_ON_BOOT 	:= true
TW_EXCLUDE_SUPERSU 		:= true
TW_USE_TOOLBOX := true
TW_EXCLUDE_TWRPAPP := true


