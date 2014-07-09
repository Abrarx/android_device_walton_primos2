# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280

# Release name
PRODUCT_RELEASE_NAME := Primo S2
PRODUCT_NAME := cm_primos2

$(call inherit-product, device/walton/primos2/full_primos2.mk)
