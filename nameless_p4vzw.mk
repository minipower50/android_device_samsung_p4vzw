# Inherit device configuration for p4vzw.
$(call inherit-product, device/samsung/p4vzw/p4vzw.mk)

# Get the prebuilt list of APNs
$(call inherit-product, vendor/nameless/config/apns.mk)

# Get all fonts and add some locales
$(call inherit-product-if-exists, frameworks/base/data/fonts/fonts.mk)
$(call inherit-product-if-exists, external/noto-fonts/fonts.mk)
$(call inherit-product-if-exists, external/naver-fonts/fonts.mk)
$(call inherit-product-if-exists, external/sil-fonts/fonts.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
PRODUCT_LOCALES += en_PH

# Inherit some common nameless stuff.
$(call inherit-product, vendor/nameless/config/common.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := nameless_p4vzw
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := p4vzw
PRODUCT_MODEL := SCH-I905
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SCH-I905 BUILD_FINGERPRINT=samsung/SCH-I905/SCH-I905:4.0.4/IMM76D/LP11:user/release-keys PRIVATE_BUILD_DESC="SCH-I905-user 4.0.4 IMM76D LP11 release-keys"

# Release name and versioning
PRODUCT_RELEASE_NAME := p4vzw

$(call inherit-product, device/samsung/p4-common/version.mk)