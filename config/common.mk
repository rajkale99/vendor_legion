# Generic product
PRODUCT_NAME := beast
PRODUCT_BRAND := beast
PRODUCT_DEVICE := generic

 EXCLUDE_SYSTEMUI_TESTS := true

 # version
include vendor/beast/config/version.mk

 # Props
include vendor/beast/config/beast_props.mk

 # Packages
include vendor/beast/config/packages.mk

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/beast/prebuilt/common/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/beast/prebuilt/common/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/beast/prebuilt/common/bin/50-beast.sh:system/addon.d/50-beast.sh \
    vendor/beast/prebuilt/common/bin/blacklist:system/addon.d/blacklist

ifeq ($(AB_OTA_UPDATER),true)
PRODUCT_COPY_FILES += \
    vendor/beast/prebuilt/common/bin/backuptool_ab.sh:system/bin/backuptool_ab.sh \
    vendor/beast/prebuilt/common/bin/backuptool_ab.functions:system/bin/backuptool_ab.functions \
    vendor/beast/prebuilt/common/bin/backuptool_postinstall.sh:system/bin/backuptool_postinstall.sh
endif

# priv-app permissions
PRODUCT_COPY_FILES += \
    vendor/beast/prebuilt/common/etc/permissions/privapp-permissions-beast.xml:system/etc/permissions/privapp-permissions-beast.xml \
    vendor/beast/prebuilt/common/etc/permissions/privapp-permissions-elgoog.xml:system/etc/permissions/privapp-permissions-elgoog.xml

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    vendor/beast/overlay/common \
    vendor/beast/overlay/themes

# Bootanimation
$(call inherit-product, vendor/beast/config/bootanimation.mk)

# Apns
 PRODUCT_COPY_FILES += \
     vendor/beast/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# Versioning
include vendor/beast/config/version.mk

# Omni Poor Man Themes
PRODUCT_PACKAGES += \
    ContactsTheme \
    DocumentsUITheme \
    DialerTheme \
    PhonographTheme \
    TelecommTheme

 PRODUCT_PACKAGES += \
    NotificationsXtended \
    NotificationsBlack \
    NotificationsDark \
    NotificationsLight \
    NotificationsPrimary

 PRODUCT_PACKAGES += \
    AccentSluttyPink \
    AccentPixel \
    AccentGoldenShower \
    AccentDeepOrange \
    AccentMisticBrown \
    AccentOmni \
    AccentWhite \
    AccentTeal \
    AccentFromHell \
    AccentBlueMonday \
    AccentSmokingGreen \
    AccentDeadRed \
    AccentRottenOrange \
    AccentDeepPurple \
    AccentBlackMagic \
    AccentPurple

 PRODUCT_PACKAGES += \
    PrimaryAlmostBlack \
    PrimaryBlack \
    PrimaryXtended \
    PrimaryXtendedClear \
    PrimaryEyeSoother \
    PrimaryOmni \
    PrimaryWhite \
    PrimaryColdWhite \
    PrimaryWarmWhite \
    PrimaryDarkBlue

# Props
include vendor/beast/config/beast_props.mk

# Sounds
include vendor/beast/config/sounds.mk
