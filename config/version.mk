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

LEGION_TAG=Beta
LEGION_VERSION := v2.0

# LEGION RELEASE VERSION
ifndef LEGION_BUILD_TYPE
    LEGION_BUILD_TYPE := Unofficial
endif

TARGET_PRODUCT_SHORT := $(subst legion_,,$(LEGION_BUILD_TYPE))


LEGION_DATE := $(shell date -u +%d-%m-%Y)

LEGION_FINGERPRINT := LegionOS-Android-$(LEGION_VERSION)/$(PLATFORM_VERSION)/$(TARGET_PRODUCT_SHORT)/$(shell date -u +%Y%m%d)/$(shell date -u +%H%M)

LEGION_BUILD_VERSION := LegionOS-$(LEGION_TAG)-$(LEGION_VERSION)-$(LEGION_BUILD_TYPE)-$(shell date -u +%Y%m%d)
