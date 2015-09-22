LOCAL_PATH := device/doro/diva

# Bootloader
TARGET_NO_BOOTLOADER 			:= true
TARGET_BOOTLOADER_BOARD_NAME 		:= msm8909

# Platform
TARGET_BOARD_PLATFORM 			:= msm8909
TARGET_BOOTLOADER_BOARD_NAME 		:= msm8909

# Architecture
TARGET_ARCH 				:= arm
TARGET_ARCH_VARIANT 			:= armv7-a-neon
TARGET_CPU_ABI 				:= armeabi-v7a
TARGET_CPU_ABI2 			:= armeabi
TARGET_CPU_VARIANT 			:= cortex-a7

ARCH_ARM_HAVE_TLS_REGISTER 		:= true
TARGET_CPU_SMP 				:= true

# Flags
TARGET_GLOBAL_CFLAGS 			+= -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS			+= -mfpu=neon -mfloat-abi=softfp

# Init
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/

# Kernel
TARGET_PREBUILT_KERNEL 		:= $(LOCAL_PATH)/kernel
TARGET_CUSTOM_KERNEL_HEADERS 	:= $(LOCAL_PATH)/include
BOARD_KERNEL_CMDLINE 		:= console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlyprintk
BOARD_KERNEL_BASE 		:= 0x80000000
BOARD_KERNEL_PAGESIZE 		:= 2048
BOARD_KERNEL_SEPARATED_DT 	:= true
BOARD_MKBOOTIMG_ARGS 		:= --dt $(LOCAL_PATH)/dt.img --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100

BOARD_KERNEL_CMDLINE		+= androidboot.selinux=permissive

# Recovery
RECOVERY_FSTAB_VERSION 			:= 2
TARGET_RECOVERY_FSTAB 			:= $(LOCAL_PATH)/recovery/etc/cwm.fstab
TARGET_USERIMAGES_USE_EXT4 		:= true
BOARD_HAS_LARGE_FILESYSTEM 		:= true

RECOVERY_GRAPHICS_USE_LINELENGTH 	:= true
# BOARD_USE_CUSTOM_RECOVERY_FONT 		:= \"roboto_15x24.h\"
# TARGET_RECOVERY_PIXEL_FORMAT 		:= "BGRA_8888"

TARGET_RECOVERY_QCOM_RTC_FIX 		:= true
TARGET_HW_DISK_ENCRYPTION 		:= true



