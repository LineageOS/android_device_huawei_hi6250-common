#!/bin/bash

source $ANDROID_BUILD_TOP/system/tools/hidl/update-makefiles-helper.sh

do_makefiles_update \
  "vendor.huawei.hardware.biometrics:device/huawei/hi6250-common/interfaces"
