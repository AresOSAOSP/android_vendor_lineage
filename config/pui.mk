# Extra packages
PRODUCT_PACKAGES += \
    GameSpace \
    LMOFreeform \
    LMOFreeformSidebar    

# Disable touch video heatmap to reduce latency, motion jitter, and CPU usage
# on supported devices with Deep Press input classifier HALs and models
PRODUCT_PRODUCT_PROPERTIES += \
    ro.input.video_enabled=false

# Disable async MTE on a few processes
PRODUCT_SYSTEM_EXT_PROPERTIES += \
    persist.arm64.memtag.app.com.android.se=off \
    persist.arm64.memtag.app.com.google.android.bluetooth=off \
    persist.arm64.memtag.app.com.android.nfc=off \
    persist.arm64.memtag.process.system_server=off

# Speed profile services and wifi-service to reduce RAM and storage
PRODUCT_SYSTEM_SERVER_COMPILER_FILTER := speed-profile
PRODUCT_USE_PROFILE_FOR_BOOT_IMAGE := true
PRODUCT_DEX_PREOPT_BOOT_IMAGE_PROFILE_LOCATION := frameworks/base/config/boot-image-profile.txt

# Cloned app exemption
PRODUCT_COPY_FILES += \
    vendor/lineage/prebuilt/common/etc/sysconfig/preinstalled-packages-platform-crdroid-product.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/preinstalled-packages-platform-crdroid-product.xml

# Overlay
PRODUCT_PACKAGES += \
    CertifiedPropsOverlay

PRODUCT_COPY_FILES += \
    vendor/lineage/config/config-system_ext.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/overlay/config/config.xml

# Fonts
PRODUCT_COPY_FILES += \
    vendor/lineage/fonts/GoogleSans-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/GoogleSans-Regular.ttf \
    vendor/lineage/fonts/GoogleSans-Italic.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/GoogleSans-Italic.ttf \
    vendor/lineage/fonts/GoogleSansClock-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/GoogleSansClock-Regular.ttf \
    vendor/lineage/fonts/GoogleSansFlex-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/GoogleSansFlex-Regular.ttf \
    vendor/lineage/fonts/fonts_customization.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/fonts_customization.xml

# Navbar
PRODUCT_PACKAGES += \
    GesturalNavigationOverlayHidden

# Themes
PRODUCT_PACKAGES += \
    AndroidBlackThemeOverlay

# Bootanimation
include vendor/lineage/bootanimation/bootanimation.mk

PRODUCT_COPY_FILES += \
    vendor/lineage/prebuilt/product/etc/permissions/com.android.angle.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/com.android.angle.xml \
    vendor/lineage/prebuilt/product/etc/sysconfig/dialer_experience.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/dialer_experience.xml \
    vendor/lineage/prebuilt/product/etc/sysconfig/google.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/google.xml \
    vendor/lineage/prebuilt/product/etc/sysconfig/google_build.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/google_build.xml \
    vendor/lineage/prebuilt/product/etc/sysconfig/google_exclusives_enable.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/google_exclusives_enable.xml \
    vendor/lineage/prebuilt/product/etc/sysconfig/google-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/google-hiddenapi-package-whitelist.xml \
    vendor/lineage/prebuilt/product/etc/sysconfig/nexus.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/nexus.xml \
    vendor/lineage/prebuilt/product/etc/sysconfig/pixel_2016_exclusive.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/pixel_2016_exclusive.xml \
    vendor/lineage/prebuilt/product/etc/sysconfig/preinstalled-packages-product-pixel-2017-and-newer.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/preinstalled-packages-product-pixel-2017-and-newer.xml \
    vendor/lineage/prebuilt/product/etc/sysconfig/preinstalled-packages-product-pixel-2018-and-newer.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/preinstalled-packages-product-pixel-2018-and-newer.xml \
    vendor/lineage/prebuilt/product/etc/sysconfig/preinstalled-packages-product-pixel-2019-and-newer.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/preinstalled-packages-product-pixel-2019-and-newer.xml \
    vendor/lineage/prebuilt/product/etc/sysconfig/preinstalled-packages-product-pixel-2022-and-newer.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/preinstalled-packages-product-pixel-2022-and-newer.xml \
    vendor/lineage/prebuilt/product/etc/sysconfig/preinstalled-packages-product-pixel-2023-and-newer.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/preinstalled-packages-product-pixel-2023-and-newer.xml
