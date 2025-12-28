#!/system/bin/sh
# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers
# Modified for Kernel Splidder by Mryassinov

## AnyKernel setup
# begin properties
properties() { '
kernel.string=Kernel Splidder v1.1 with KernelSU-Next v3.0.0 by Mryassinov
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=sweet
device.name2=sweetin
device.name3=tucana
device.name4=tucanan
device.name5=toco
device.name6=tocoin
device.name7=phoenix
device.name8=phoenixin
device.name9=davinci
device.name10=davinciin
supported.versions=11-16
supported.patchlevels=
supported.vendorpatchlevels=
'; } # end properties

### AnyKernel install
## boot files attributes
boot_attributes() {
  set_perm_recursive 0 0 755 644 $RAMDISK/*;
  set_perm_recursive 0 0 750 750 $RAMDISK/init* $RAMDISK/sbin;
  set_perm_recursive 0 0 750 750 $RAMDISK/overlay.d/sbin;
} # end attributes

# boot shell variables
BLOCK=/dev/block/bootdevice/by-name/boot;
IS_SLOT_DEVICE=auto;
RAMDISK_COMPRESSION=auto;
PATCH_VBMETA_FLAG=auto;

# import functions/variables and setup patching - see for reference (DO NOT REMOVE)
. tools/ak3-core.sh;

## AnyKernel boot install
dump_boot;

# begin ramdisk changes

# KernelSU integration check
if [ -f "$RAMDISK/overlay.d/sbin/ksud" ]; then
  ui_print " ";
  ui_print "- KernelSU daemon detected in ramdisk";
fi

# end ramdisk changes

write_boot;

## end boot install