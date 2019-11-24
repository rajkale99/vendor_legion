# Copyright (C) 2018 LegionOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LEGION_VERSION := v2.3

# LEGION RELEASE VERSION
ifndef LEGION_BUILD_TYPE
    LEGION_BUILD_TYPE := Unofficial
endif

CURRENT_DEVICE=$(shell echo "$(TARGET_PRODUCT)" | cut -d'_' -f 2,3)

ifeq ($(LEGION_OFFICIAL),true)
   LIST = $(shell curl -s https://raw.githubusercontent.com/legionRom/platform_vendor_legion/pie/legion.devices)
   FOUND_DEVICE = $(filter $(CURRENT_DEVICE), $(LIST))
    ifeq ($(FOUND_DEVICE),$(CURRENT_DEVICE))
      IS_OFFICIAL=true
      LEGION_BUILD_TYPE := OFFICIAL
    else
      LEGION_BUILD_TYPE := UNOFFICIAL
    endif
endif

CUSTOM_DATE_YEAR := $(shell date -u +%Y)
CUSTOM_DATE_MONTH := $(shell date -u +%m)
CUSTOM_DATE_DAY := $(shell date -u +%d)
CUSTOM_DATE_HOUR := $(shell date -u +%H)
CUSTOM_DATE_MINUTE := $(shell date -u +%M)
BUILD_DATE_UTC := $(shell date -d '$(CUSTOM_DATE_YEAR)-$(CUSTOM_DATE_MONTH)-$(CUSTOM_DATE_DAY) $(CUSTOM_DATE_HOUR):$(CUSTOM_DATE_MINUTE) UTC' +%s)

BUILD_DATE := $(shell date -u +%Y%m%d-%H%M)

LEGION_FINGERPRINT := LEGIONOS/$|(LEGION_VERSION)/$(PLATFORM_VERSION)/$(BUILD_ID)/$(BUILD_DATE)
LEGION_BUILD_VERSION := LEGIONOS-$(LEGION_VERSION)-$(LEGION_BUILD)-$(LEGION_BUILD_TYPE)-$(BUILD_DATE)
LEGION_VERSION := 2.3

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
  ro.legion.build.version=$(LEGION_BUILD_VERSION) \
  ro.legion.build.date=$(BUILD_DATE) \
  ro legion.build.date.utc=$(BUILD_DATE_UTC) \
  ro.legion.buildtype=$(LEGION_BUILD_TYPE) \
  ro.legion.fingerprint=$(LEGION_FINGERPRINT) \
  ro.legion.version=$(LEGION_VERSION) \
  ro.legion.device=$(LEGION_BUILD) \
  ro.modversion=$(LEGION_VERSION)

ifneq ($(OVERRIDE_OTA_CHANNEL),)
    PRODUCT_PROPERTY_OVERRIDES += \
        legion.updater.uri=$(OVERRIDE_OTA_CHANNEL)
endif
