ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/beast/config/BoardConfigQcom.mk
endif

include vendor/beast/config/BoardConfigKernel.mk

include vendor/beast/config/BoardConfigSoong.mk
