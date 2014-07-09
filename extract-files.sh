#!/bin/bash

export VENDOR=walton
export DEVICE=primos2
# Comment these out if there is no common device tree for this device
export COMMON_DEVICE=msm8226-common
export BOARD_VENDOR=walton-qcom
export TARGET_BOARD_PLATFORM=msm8226

../$COMMON_DEVICE/extract-files.sh $@
