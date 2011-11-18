# config.mk
#
# Product-specific compile-time definitions.
#

ifeq ($(QC_PROP),true)
    BOARD_USES_QCOM_HARDWARE := true
    BOARD_USES_ADRENO_200 := true
    HAVE_ADRENO200_SOURCE := true
    HAVE_ADRENO200_SC_SOURCE := true
    HAVE_ADRENO200_FIRMWARE := true
    TARGET_USES_C2D_COMPOSITION := true
#    BOARD_USES_QCOM_AUDIO_V2 := true
    BOARD_USES_GENERIC_AUDIO := true
    BOARD_USE_QCOM_TESTONLY := true
    BOARD_USES_QCNE := true
    TARGET_USES_SF_BYPASS := false
    WEBCORE_INPAGE_VIDEO := true

    ifneq ($(BUILD_TINY_ANDROID), true)
    BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50001
    BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := default
    BOARD_CAMERA_LIBRARIES := libcamera
    BOARD_HAVE_BLUETOOTH := true
    BOARD_HAVE_QCOM_FM := true
    BOARD_HAS_QCOM_WLAN := true
    BOARD_WPA_SUPPLICANT_DRIVER := NL80211 
    BOARD_HOSTAPD_DRIVER := NL80211
    WPA_SUPPLICANT_VERSION := VER_0_8_X
    HOSTAPD_VERSION := VER_0_8_X
    WIFI_SDIO_IF_DRIVER_MODULE_PATH :=  "/system/lib/modules/librasdioif.ko"
    WIFI_SDIO_IF_DRIVER_MODULE_NAME :=  "librasdioif"
    WIFI_SDIO_IF_DRIVER_MODULE_ARG  := ""
    endif   # !BUILD_TINY_ANDROID

else
    BOARD_USES_GENERIC_AUDIO := true
    USE_CAMERA_STUB := true

endif # QC_PROP

TARGET_HAVE_TSLIB := true
TARGET_HAVE_HDMI_OUT := true
#if TARGET_GRALLOC_USES_ASHMEM is enabled, set debug.sf.hw=1 in system.prop
TARGET_GRALLOC_USES_ASHMEM := false
TARGET_USES_OVERLAY := true
TARGET_NO_BOOTLOADER := false
TARGET_NO_KERNEL := false
TARGET_NO_RADIOIMAGE := true

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_CPU_ABI  := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_HARDWARE_3D := false
TARGET_BOARD_PLATFORM := msm7630_surf
TARGET_BOOTLOADER_BOARD_NAME := MSM7630_SURF
QCOM_TARGET_PRODUCT := msm7630_surf

BOARD_KERNEL_BASE    := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096
#Spare size is (BOARD_KERNEL_PAGESIZE>>9)*16
BOARD_KERNEL_SPARESIZE := 128

TARGET_USERIMAGES_USE_EXT4 := true

BOARD_KERNEL_CMDLINE := console=ttyDCC0 androidboot.hardware=qcom
BOARD_EGL_CFG := device/qcom/$(TARGET_PRODUCT)/egl.cfg

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00500000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 190221120
BOARD_USERDATAIMAGE_PARTITION_SIZE := 125829120
BOARD_PERSISTIMAGE_PARTITION_SIZE := 4096000
BOARD_CACHEIMAGE_PARTITION_SIZE := 4096000
BOARD_TOMBSTONESIMAGE_PARTITION_SIZE := 4096000 # Not used on msm7630
BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)

HAVE_CYTTSP_FW_UPGRADE := true
