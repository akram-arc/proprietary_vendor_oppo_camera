LOCAL_PATH := vendor/oppo/camera

# Build Camera
#$(shell cd vendor/oppo/camera/proprietary/system/priv-app/OppoCamera && rm -f OppoCamera.apk && zip -q -r OppoCamera.apk . -x "*.apk" -x "*.mk" -x "*.bp" -x "*.sh" 2>&1 >/dev/null)


PRODUCT_PACKAGES += \
    oplus-framework \
    main-framework 


PRODUCT_BOOT_JARS += \
    oplus-framework \
    main-framework 

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/permissions/privapp-permissions-oppocam.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-oppocam.xml 



# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    vendor/oppo/camera \
    hardware/mediatek \
    hardware/mediatek/libmtkperf_client

# Important Props 
PRODUCT_PRODUCT_PROPERTIES += \
    ro.camera.hfr.enable=1 \
    ro.camera.high.resolution.video.filter.enable=1 \
    ro.camera.portrait.blur.level.enable=1 \
    ro.camera.videoeis.enable=1 \
    ro.mtk_cam_dualzoom_support=1 \
    ro.mtk_cam_stereo_camera_support=1 \
    ro.oplus.system.camera.name=com.oppo.camera \
    ro.vendor.mtk_camera_app_version=3 \
    ro.camera.temperature.limit=420 \
    ro.vendor.mtk_zsdhdr_support=1 \
    ro.vendor.hdr10plus.enable=1 \
    ro.vendor.mtk_slow_motion_support=1 \
    ro.vendor.mtk_video_hevc_enc_support=1 \
    oppo.camera.packname=com.oppo.camera \
    vendor.oplus.camera.low_ram=0 \
    vendor.oppo.highres=0 \
    persist.vendor.oppo.restart=0


# Inherit from camera-vendor.mk (includes all the blobs)
$(call inherit-product, vendor/oppo/camera/camera-vendor.mk)


# SEpolicy
include vendor/oppo/camera/sepolicy/SEPolicy.mk

