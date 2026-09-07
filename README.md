# proprietary_vendor_oppo_camera

Prebuilt stock Oppo Camera to include in RUI2 based custom ROM builds for RM6785.

### How to use?

1. Clone this repo to `vendor/oppo/camera`

2. Inherit it from `device.mk` in device tree:

```
# Camera
$(call inherit-product-if-exists, vendor/oppo/camera/oppocamera.mk)
```

3. Ensure that the PRODUCT_BRAND is either realme or oneplus or oppo and that it is not overriden by any of the safetynet hacks.
