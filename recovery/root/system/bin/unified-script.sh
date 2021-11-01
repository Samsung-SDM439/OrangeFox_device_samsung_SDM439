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

load_a01q()
{
    resetprop "ro.product.model" "SM-A015G"
    resetprop "ro.product.name" "a01q"
    resetprop "ro.build.product" "a01q"
    resetprop "ro.product.device" "a01q"
    resetprop "ro.vendor.product.device" "a01q"

}

project=$(ro.boot.em.model)
echo $project

case $project in
    "SM-M015G")
        load_m01q
        ;;
    "SM-A015G")
        load_a01q
        ;;
    *)
        load_m01q
        ;;
esac

exit 0

