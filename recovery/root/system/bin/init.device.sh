#!/system/bin/bash
##*************************************************##
#
# Copyright (C) 2024 The Android Open Source Project
# SPDX-License-Identifier: Apache-2.0
#
##*************************************************##
operatorName=$(cat /proc/oplusVersion/operatorName)
echo $operatorName

case $operatorName in
    "94");
    "148")
        resetprop "ro.product.model" "Realme 7"	
        resetprop "ro.build.name" "RMX2155"
        resetprop "ro.build.product" "RMX2155"
        resetprop "ro.product.device" "RMX2155L1"
        ;;
    "140");
    "141");
    "146");
    "149")
        resetprop "ro.product.model" "Realme 7"
        resetprop "ro.build.name" "RMX2151"
        resetprop "ro.build.product" "RMX2151"
        resetprop "ro.product.device" "RMX2151L1"
        ;;
    "90");
    "92")
        resetprop "ro.product.model" "Narzo 30 4G"
        resetprop "ro.build.name" "RMX2156"
        resetprop "ro.build.product" "RMX2156"
        resetprop "ro.product.device" "RMX2156L1"
        ;;
    "145");
    "147")
        resetprop "ro.product.model" "Narzo 20 Pro"
        resetprop "ro.build.name" "RMX2163"
        resetprop "ro.build.product" "RMX2163"
        resetprop "ro.product.device" "RMX2163L1"
        ;;
esac

exit 0
