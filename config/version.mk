# Copyright (C) 2019 BeastROMs
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

BEAST_MOD_VERSION = 1.0

ifndef BEAST_BUILD_TYPE
    BEAST_BUILD_TYPE := UNOFFICIAL
endif

ifeq ($(BEAST_BETA),true)
    BEAST_BUILD_TYPE := BETA
endif

ifeq ($(BEAST_ALPHA),true)
    BEAST_BUILD_TYPE := ALPHA
endif

CURRENT_DEVICE=$(shell echo "$(TARGET_PRODUCT)" | cut -d'_' -f 2,3)

ifeq ($(BEAST_OFFICIAL),true)
   LIST = $(shell curl -s https://raw.githubusercontent.com/BeastRoms/vendor_beast/pie/beast.devices)
   FOUND_DEVICE = $(filter $(CURRENT_DEVICE), $(LIST))
    ifeq ($(FOUND_DEVICE),$(CURRENT_DEVICE))
      IS_OFFICIAL=true
      BEAST_BUILD_TYPE := OFFICIAL

PRODUCT_PACKAGES += \
    Updater

    else
      BEAST_BUILD_TYPE := UNOFFICIAL
    endif
endif

BEAST_VERSION := BeastROMs-$(BEAST_MOD_VERSION)-$(CURRENT_DEVICE)-$(BEAST_BUILD_TYPE)-$(shell date -u +%Y%m%d)

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
  ro.beast.version=$(BEAST_VERSION) \
  ro.beast.releasetype=$(BEAST_BUILD_TYPE) \
  ro.mod.version=$(BEAST_MOD_VERSION)

BEAST_DISPLAY_VERSION := BeastROMs-$(BEAST_MOD_VERSION)-$(BEAST_BUILD_TYPE)

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
  ro.beast.display.version=$(BEAST_DISPLAY_VERSION)
