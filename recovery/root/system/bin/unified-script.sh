#!/system/bin/sh
# This script is needed to automatically set device props.

load_m01q()
{
    resetprop "ro.product.model" "SM-M015G"
    resetprop "ro.product.name" "m01q"
    resetprop "ro.build.product" "m01q"
    resetprop "ro.product.device" "m01q"
    resetprop "ro.vendor.product.device" "m01q"

}

