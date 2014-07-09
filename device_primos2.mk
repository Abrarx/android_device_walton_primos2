#
# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product, vendor/walton/primos2/primos2-vendor.mk)

LOCAL_PATH := device/walton/primos2

PRODUCT_BOOT_JARS += qcmediaplayer

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml

# primos2 specific overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libalsa-intf \
    libaudio-resampler \
    libaudioutils \
    aplay \
    amix \
    arec \
    alsaucm_test \
    libaudioparameter \
    libqcomvisualizer \
    libqcomvoiceprocessing

# Ebtables
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libebtc

# FM radio
PRODUCT_PACKAGES += \
    qcom.fmradio \
    libqcomfm_jni \
    FM2 \
    FMRecord

# HAL
PRODUCT_PACKAGES += \
    gps.msm8226 \
    gralloc.msm8226 \
    hwcomposer.msm8226 \
    copybit.msm8226 \
    keystore.msm8226 \
    memtrack.msm8226

# QRNG
PRODUCT_PACKAGES += qrngp

# Utilities
PRODUCT_PACKAGES += \
    charge_only_mode \
    mkfs.f2fs \
    fsck.f2fs \
    fibmap.f2fs \
    wcnss_service

# Misc
PRODUCT_PACKAGES += \
    curl \
    libbson \
    libcurl \
    tcpdump \
    Torch

# Charger
# PRODUCT_PACKAGES += charger charger_res_images

# QRNGD
PRODUCT_PACKAGES += qrngd

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Crda
PRODUCT_PACKAGES += \
    crda \
    linville.key.pub.pem \
    regdbdump \
    regulatory.bin

# Qcom SoftAP
PRODUCT_PACKAGES += \
    libQWiFiSoftApCfg

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    HoloSpiralWallpaper \
    VisualizationWallpapers \
    librs_jni

# QCOM Display
PRODUCT_PACKAGES += \
    libgenlock \
    libmemalloc \
    liboverlay \
    libqdutils \
    libtilerenderer

# Omx
PRODUCT_PACKAGES += \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libOmxCore \
    libstagefrighthw \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libdashplayer \
    qcmediaplayer

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    e2fsck \
    resize2fs \
    setup_fs

#wifi
PRODUCT_PACKAGES += \
    hostapd.accept \
    hostapd.deny \
    hostapd_default.conf \
    libnetcmdiface

PRODUCT_PACKAGES += \
	WCNSS_qcom_wlan_factory_nv.bin \
	WCNSS_qcom_wlan_nv.bin

# Init scripts
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/root/fstab.qcom:root/fstab.qcom \
	$(LOCAL_PATH)/rootdir/root/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
	$(LOCAL_PATH)/rootdir/root/init.qcom.class_main.sh:root/init.qcom.class_main.sh \
	$(LOCAL_PATH)/rootdir/root/init.qcom.early_boot.sh:root/init.qcom.early_boot.sh \
	$(LOCAL_PATH)/rootdir/root/init.qcom.factory.sh:root/init.qcom.factory.sh \
	$(LOCAL_PATH)/rootdir/root/init.qcom.rc:root/init.qcom.rc \
	$(LOCAL_PATH)/rootdir/root/init.qcom.ril.sh:root/init.qcom.ril.sh \
	$(LOCAL_PATH)/rootdir/root/init.qcom.sh:root/init.qcom.sh \
	$(LOCAL_PATH)/rootdir/root/init.qcom.spec.switch.rc:root/init.qcom.spec.switch.rc \
	$(LOCAL_PATH)/rootdir/root/init.qcom.ssr.sh:root/init.qcom.ssr.sh \
	$(LOCAL_PATH)/rootdir/root/init.qcom.syspart_fixup.sh:root/init.qcom.syspart_fixup.sh \
	$(LOCAL_PATH)/rootdir/root/init.qcom.usb.rc:root/init.qcom.usb.rc \
	$(LOCAL_PATH)/rootdir/root/init.qcom.usb.sh:root/init.qcom.usb.sh \
	$(LOCAL_PATH)/rootdir/root/init.target.rc:root/init.target.rc \
	$(LOCAL_PATH)/rootdir/root/ueventd.qcom.rc:root/ueventd.qcom.rc

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/etc/hcidump.sh:system/etc/hcidump.sh \
	$(LOCAL_PATH)/rootdir/etc/hsic.control.bt.sh:system/etc/hsic.control.bt.sh \
	$(LOCAL_PATH)/rootdir/etc/init.ath3k.bt.sh:system/etc/init.ath3k.bt.sh \
	$(LOCAL_PATH)/rootdir/etc/init.crda.sh:system/etc/init.crda.sh \
	$(LOCAL_PATH)/rootdir/etc/init.qcom.audio.sh:system/etc/init.qcom.audio.sh \
	$(LOCAL_PATH)/rootdir/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
	$(LOCAL_PATH)/rootdir/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
	$(LOCAL_PATH)/rootdir/etc/init.qcom.efs.sync.sh:system/etc/init.qcom.efs.sync.sh \
	$(LOCAL_PATH)/rootdir/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
	$(LOCAL_PATH)/rootdir/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
	$(LOCAL_PATH)/rootdir/etc/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
	$(LOCAL_PATH)/rootdir/etc/init.qcom.thermal_conf.sh:system/etc/init.qcom.thermal_conf.sh \
	$(LOCAL_PATH)/rootdir/etc/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh \
	$(LOCAL_PATH)/rootdir/etc/thermal-engine-8226.conf:system/etc/thermal-engine-8226.conf

# GPS configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/gps.conf:system/etc/gps.conf

# QCOM Display
PRODUCT_PROPERTY_OVERRIDES += \
    debug.egl.hw=1 \
    debug.sf.hw=1 \
    debug.composition.type=dyn \
    persist.hwc.mdpcomp.enable=true \
    debug.mdpcomp.logs=0

# QCOM
PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true #Questionable?

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qc.sdk.audio.ssr=false

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    lpa.decode=true \
    lpa.use-stagefright=true \
    qcom.hw.aac.encoder=true

PRODUCT_PROPERTY_OVERRIDES += \
    ril.subscription.types=NV,RUIM \
    keyguard.no_require_sim=true \
    ro.use_data_netmgrd=true

# QC time services
PRODUCT_PROPERTY_OVERRIDES += \
    persist.timed.enable=true

# Enable KSM by default
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ksm.default=1

# Audio configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/config/audio_effects.conf:system/vendor/etc/audio_effects.conf

# MMI
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/config/mmi.cfg:system/etc/mmi.cfg \
	$(LOCAL_PATH)/config/qcom.cfg:system/etc/qcom.cfg \
	$(LOCAL_PATH)/config/sensor_def_qcomdev.conf:system/etc/sensor_def_qcomdev.conf \
	$(LOCAL_PATH)/config/vold.fstab:system/etc/vold.fstab \
	$(LOCAL_PATH)/config/thermal-engine-8226.conf:system/etc/thermal-engine-8226.conf \
	$(LOCAL_PATH)/config/ftm_test_config:system/etc/ftm_test_config \
	$(LOCAL_PATH)/config/izat.conf:system/etc/izat.conf \
	$(LOCAL_PATH)/config/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
	$(LOCAL_PATH)/config/libnfc-brcm-20791b05.conf:system/etc/libnfc-brcm-20791b05.conf \
	$(LOCAL_PATH)/config/lowi.conf:system/etc/lowi.conf \
	$(LOCAL_PATH)/config/quipc.conf:system/etc/quipc.conf \
	$(LOCAL_PATH)/config/qlog-conf.xml:system/etc/qlog-conf.xml


# EGL config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/egl.cfg:system/lib/egl/egl.cfg

# Sap/location secuity configuration file
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/sap.conf:system/etc/sap.conf \
    $(LOCAL_PATH)/config/sec_config:system/etc/sec_config

# Media config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/config/media_codecs.xml:system/etc/media_codecs.xml

# QCOM Display
PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.fb_always_on=1 \
    ro.hdmi.enable=true

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.enable-player=true \
    media.stagefright.enable-http=true \
    media.stagefright.enable-aac=true \
    media.stagefright.enable-qcp=true \
    media.stagefright.enable-fma2dp=true \
    media.stagefright.enable-scan=true \
    mmp.enable.3g2=true \
    mm.enable.qcom_parser=131071 \
    ro.qualcomm.cabl=0 \
    ro.qc.sdk.audio.ssr=false \
    ro.qc.sdk.audio.fluencetype=fluence \
    mm.enable.smoothstreaming=true \
    qcom.hw.aac.encoder=true \
    vidc.debug.level=1

# Misc
PRODUCT_PROPERTY_OVERRIDES += \
    persist.gps.qc_nlp_in_use=0 \
    persist.fuse_sdcard=false \
    ro.nfc.port=I2C \
    ro.sys.umsdirtyratio=20 \
    persist.sys.umsdirtyratio=20 \
    persist.camera.is.setting=2 \
    persist.capture.burst.exposures=-5,0,5 \
    ro.cwm.forbid_format="/fsg,/firmware,/persist,/boot"

# Storage
PRODUCT_PROPERTY_OVERRIDES += \
	ro.external.sd.path=/storage/sdcard1 \
	persist.sys.timezone=Asia/Almaty \
	gn.mmi.mic2=yes \
	gn.mmi.keytest.menu=yes \
	gn.mmi.keytest.app=no \
	gn.mmi.sensor.gyro=yes

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/system/vendor/lib/libril-qc-qmi-1.so \
    persist.radio.msgtunnel.start=false \
    persist.sys.ssr.restart_level=3 \
    ro.telephony.default_network=5 \
    telephony.lteOnCdmaDevice=1 \
    persist.radio.oem_socket=1

# Opengles version 3
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196608

# QCOM Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=320

# QC Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=/system/vendor/lib/libqc-opt.so \
    persist.radio.multisim.config=dsds

PRODUCT_LOCALES := en_US
PRODUCT_LOCALES += xhdpi
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
