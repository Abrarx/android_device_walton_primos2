# Inherit some common CM stuff.
$(call inherit-product, vendor/liquid/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_HEIGHT :=1280
TARGET_SCREEN_WIDTH := 720
PRODUCT_COPY_FILES += \
vendor/liquid/prebuilt/common/bootanimation/720.zip:system/media/bootanimation.zip
# Release name
PRODUCT_RELEASE_NAME := Primo S2
PRODUCT_NAME := liquid_primos2

$(call inherit-product, device/walton/primos2/full_primos2.mk)
