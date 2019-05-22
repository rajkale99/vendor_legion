# Generic product
PRODUCT_NAME := legion
PRODUCT_BRAND := legion
PRODUCT_DEVICE := generic

EXCLUDE_SYSTEMUI_TESTS := true

# Cutout control overlay
PRODUCT_PACKAGES += \
    NoCutoutOverlay

# version
include vendor/legion/config/version.mk

# Props
include vendor/legion/config/legion_props.mk

# Packages
include vendor/legion/config/packages.mk

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/legion/prebuilt/common/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/legion/prebuilt/common/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/legion/prebuilt/common/bin/50-legion.sh:system/addon.d/50-legion.sh \
    vendor/legion/prebuilt/common/bin/blacklist:system/addon.d/blacklist

ifeq ($(AB_OTA_UPDATER),true)
PRODUCT_COPY_FILES += \
    vendor/legion/prebuilt/common/bin/backuptool_ab.sh:system/bin/backuptool_ab.sh \
    vendor/legion/prebuilt/common/bin/backuptool_ab.functions:system/bin/backuptool_ab.functions \
    vendor/legion/prebuilt/common/bin/backuptool_postinstall.sh:system/bin/backuptool_postinstall.sh
endif

# priv-app permissions
PRODUCT_COPY_FILES += \
    vendor/legion/prebuilt/common/etc/permissions/privapp-permissions-legion.xml:system/etc/permissions/privapp-permissions-legion.xml \
    vendor/legion/prebuilt/common/etc/permissions/privapp-permissions-elgoog.xml:system/etc/permissions/privapp-permissions-elgoog.xml

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    vendor/legion/overlay/common \
    vendor/legion/overlay/themes

# Bootanimation
$(call inherit-product, vendor/legion/config/bootanimation.mk)

# Substratum Key
PRODUCT_COPY_FILES += \
    vendor/legion/prebuilt/common/priv-app/SubstratumKey.apk:system/priv-app/SubstratumKey/SubstratumKey.apk

# Sensitive Phone Numbers list
PRODUCT_COPY_FILES += \
    vendor/legion/prebuilt/common/etc/sensitive_pn.xml:system/etc/sensitive_pn.xml

# World APN list
PRODUCT_COPY_FILES += \
    vendor/legion/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# Versioning
include vendor/legion/config/version.mk

# QS tile styles
PRODUCT_PACKAGES += \
    QStileInk \
    QStileInkDrop \
    QStileTeardrop \
    QStileCookie \
    QStilesCircleOutline \
    QStileHexagon \
    QStileStar \
    QStileSquare \
    QStileGear \
    QStileBadge \
    QStileBadgetwo \
    QStileSquircle \
    QStileDiamond \
    QStileNeonlike \
    QStileOOS \
    QStileTriangles \
    QStileDivided \
    QStileCosmos

# Omni's PoorMan Themes
PRODUCT_PACKAGES += \
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
    AccentPurple \
    AccentCandyRed \
    AccentJadeGreen \
    AccentPaleBlue \
    AccentPaleRed \
    AccentObfusBleu \
    AccentNotImpPurple \
    AccentHolillusion \
    AccentMoveMint \
    AccentFootprintPurple \
    AccentBubblegumPink \
    AccentFrenchBleu \
    AccentManiaAmber \
    AccentSeasideMint \
    AccentDreamyPurple \
    AccentSpookedPurple \
    AccentHeirloomBleu \
    AccentTruFilPink \
    AccentWarmthOrange \
    AccentColdBleu \
    AccentDiffDayGreen \
    AccentDuskPurple \
    AccentBurningRed \
    AccentHazedPink \
    AccentColdYellow \
    AccentNewHouseOrange \
    AccentIllusionsPurple \
    AccentFlare \
    AccentSublime \
    AccentSincityRed \
    AccentOrangeCoral \
    AccentPureLust \
    AccentQuepal \
    AccentShadesOfGrey \
    AccentSweetQPurple \
    AccentQGreen

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
    PrimaryDarkBlue \
    PrimaryRocky \
    PrimaryColtChocko \
    PrimaryBlueBlack

# Props
include vendor/legion/config/legion_props.mk

# Sounds
include vendor/legion/config/sounds.mk

# Do not include art debug targets
PRODUCT_ART_TARGET_INCLUDE_DEBUG_BUILD := false

#Legion Fonts - Copy to System fonts
PRODUCT_COPY_FILES += \
    vendor/legion/prebuilt/fonts/gobold/Gobold.ttf:system/fonts/Gobold.ttf \
    vendor/legion/prebuilt/fonts/gobold/Gobold-Italic.ttf:system/fonts/Gobold-Italic.ttf \
    vendor/legion/prebuilt/fonts/gobold/GoboldBold.ttf:system/fonts/GoboldBold.ttf \
    vendor/legion/prebuilt/fonts/gobold/GoboldBold-Italic.ttf:system/fonts/GoboldBold-Italic.ttf \
    vendor/legion/prebuilt/fonts/gobold/GoboldThinLight.ttf:system/fonts/GoboldThinLight.ttf \
    vendor/legion/prebuilt/fonts/gobold/GoboldThinLight-Italic.ttf:system/fonts/GoboldThinLight-Italic.ttf \
    vendor/legion/prebuilt/fonts/roadrage/road_rage.ttf:system/fonts/RoadRage-Regular.ttf \
    vendor/legion/prebuilt/fonts/neoneon/neoneon.ttf:system/fonts/Neoneon-Regular.ttf \
    vendor/legion/prebuilt/fonts/mexcellent/mexcellent.ttf:system/fonts/Mexcellent-Regular.ttf \
    vendor/legion/prebuilt/fonts/burnstown/burnstown.ttf:system/fonts/Burnstown-Regular.ttf \
    vendor/legion/prebuilt/fonts/dumbledor/dumbledor.ttf:system/fonts/Dumbledor-Regular.ttf \
    vendor/legion/prebuilt/fonts/PhantomBold/PhantomBold.ttf:system/fonts/PhantomBold-Regular.ttf \
    vendor/legion/prebuilt/fonts/snowstorm/snowstorm.ttf:system/fonts/Snowstorm-Regular.ttf \
    vendor/legion/prebuilt/fonts/vcrosd/vcr_osd_mono.ttf:system/fonts/ThemeableFont-Regular.ttf \
    vendor/legion/prebuilt/fonts/Shamshung/Shamshung.ttf:system/fonts/Shamshung.ttf

# Strip the local variable table and the local variable type table to reduce
# the size of the system image. This has no bearing on stack traces, but will
# leave less information available via JDWP.
PRODUCT_MINIMIZE_JAVA_DEBUG_INFO := true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.opa.eligible_device=true


