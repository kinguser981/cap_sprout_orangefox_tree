#	 This file is part of the OrangeFox Recovery Project
# 	 Copyright (C) 2021-2024 The OrangeFox Recovery Project
#	 Copyright (C) 2024 The Android Open Source Project
#
#	OrangeFox is free software: you can redistribute it and/or modify
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation, either version 3 of the License, or
#	any later version.
#	SPDX-License-Identifier: Apache-2.0
#
#	OrangeFox is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#
# 	This software is released under GPL version 3 or any later version.
#	  See <http://www.gnu.org/licenses/>.
#
# 	Please maintain this if you use this script or any part of it
#
FDEVICE="cap_sprout"
fox_get_target_device() {
local chkdev=$(echo "$BASH_SOURCE" | grep -w $FDEVICE)
   if [ -n "$chkdev" ]; then
      FOX_BUILD_DEVICE="$FDEVICE"
   else
      chkdev=$(set | grep BASH_ARGV | grep -w $FDEVICE)
      [ -n "$chkdev" ] && FOX_BUILD_DEVICE="$FDEVICE"
   fi
}

if [ -z "$1" -a -z "$FOX_BUILD_DEVICE" ]; then
   fox_get_target_device
fi

if [ "$1" = "$FDEVICE" -o "$FOX_BUILD_DEVICE" = "$FDEVICE" ]; then

 # Fox-specific flags
 export FOX_ENABLE_APP_MANAGER=1
 export OF_QUICK_BACKUP_LIST="/boot;/data;"
 export OF_NO_TREBLE_COMPATIBILITY_CHECK=1

 # Binaries & Tools
 export FOX_USE_BASH_SHELL=1
 export FOX_ASH_IS_BASH=1
 export FOX_USE_NANO_EDITOR=1
 export FOX_USE_TAR_BINARY=1
 export FOX_USE_SED_BINARY=1
 export FOX_USE_XZ_UTILS=1
 export OF_ENABLE_LPTOOLS=1

 # Version & Variant
 export FOX_VERSION="R11.1"
 export FOX_VARIANT="A14"
 export FOX_BUILD_TYPE="Stable"

 # Custom ROMs
 export FOX_AB_DEVICE=1
 export OF_USE_GREEN_LED=1
 export OF_CLASSIC_LEDS_FUNCTION=1


 # Security (Disables MTP&ADB during password prompt)
 export OF_ADVANCED_SECURITY=1
 export OF_DONT_PATCH_ENCRYPTED_DEVICE=1
 export OF_AB_DEVICE_WITH_RECOVERY_PARTITION=1
 ##export OF_NO_RELOAD_AFTER_DECRYPTION=1

 # Screen settings
 export OF_SCREEN_H="2400"
 ##export OF_STATUS_H="80"
 export OF_STATUS_INDENT_LEFT=40
 export OF_STATUS_INDENT_RIGHT=40
 ##export OF_HIDE_NOTCH=1
 ##export OF_CLOCK_POS=1 # Left & Right

 

 # Maximum permissible splash image size (in kilobytes); do *NOT* increase!
 

 # use system (ROM) fingerprint where available
 export OF_USE_SYSTEM_FINGERPRINT="1"

 # Debugging
 ##export FOX_RESET_SETTINGS=0
 ##export FOX_INSTALLER_DEBUG_MODE=1

 # Other..
 export TW_DEFAULT_LANGUAGE="en"
 export LC_ALL="C"
 

# run a process after formatting data to work-around MTP issues
##export OF_RUN_POST_FORMAT_PROCESS=1

# Custom pic for maintainers about section info
# Image should be 32 bit PNG 192 x 192 px - Size of image should be as small as possible 50kb
export OF_MAINTAINER_AVATAR="/device/nokia/cap_sprout/vega.png"
export OF_MAINTAINER="Samuel Kendall"


 # Let's see our build VARs ZZZ
 if [ -n "$FOX_BUILD_LOG_FILE" -a -f "$FOX_BUILD_LOG_FILE" ]; then
  export | grep "FOX" >> $FOX_BUILD_LOG_FILE
  export | grep "OF_" >> $FOX_BUILD_LOG_FILE
  export | grep "TARGET_" >> $FOX_BUILD_LOG_FILE
  export | grep "TW_" >> $FOX_BUILD_LOG_FILE
 fi
fi
# Reserved
