#
# SELinux policy for the OPPO/OPLUS camera stack:
#   - com.oppo.camera (platform-signed priv-app -> platform_app domain)
#   - vendor.oplus.hardware.camera.slogan@1.0 (camerasloganserver)
#   - the OPLUS plugins loaded into camerahalserver (mtk_hal_camera)
#
# Anything already covered by device/mediatek/sepolicy_vndr or
# device/realme/RM6785/sepolicy is deliberately NOT repeated here.
#

OPLUS_CAMERA_SEPOLICY_PATH := vendor/oppo/camera/sepolicy

BOARD_VENDOR_SEPOLICY_DIRS += \
    $(OPLUS_CAMERA_SEPOLICY_PATH)/vendor

SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
    $(OPLUS_CAMERA_SEPOLICY_PATH)/private

SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += \
    $(OPLUS_CAMERA_SEPOLICY_PATH)/public
