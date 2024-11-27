#
#	This file is part of the OrangeFox Recovery Project
# 	Copyright (C) 2023 The OrangeFox Recovery Project
#
#	OrangeFox is free software: you can redistribute it and/or modify
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation, either version 3 of the License, or
#	any later version.
#
#	OrangeFox is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#
# 	This software is released under GPL version 3 or any later version.
#	See <http://www.gnu.org/licenses/>.
#
# 	Please maintain this if you use this script or any part of it
#

# OrangeFox settings
OF_NO_TREBLE_COMPATIBILITY_CHECK := 1
OF_AB_DEVICE_WITH_RECOVERY_PARTITION := 1
OF_RECOVERY_AB_FULL_REFLASH_RAMDISK := 1
OF_ENABLE_LPTOOLS := 1
OF_USE_GREEN_LED := 1
OF_CLASSIC_LEDS_FUNCTION := 1

# Custom pic for maintainers about section info
# Image should be 32 bit PNG 192 x 192 px - Size of image should be as small as possible 50kb
OF_MAINTAINER_AVATAR := /device/nokia/cap_sprout/author.png
OF_MAINTAINER := Samuel Kendall

# Maximum permissible splash image size (in kilobytes); do *NOT* increase
OF_SPLASH_MAX_SIZE := 130

OF_ADVANCED_SECURITY := 1
OF_DONT_PATCH_ENCRYPTED_DEVICE := 1
OF_NO_RELOAD_AFTER_DECRYPTION := 1
 
# Screen settings
OF_SCREEN_H := 2400
OF_STATUS_H := 80
OF_STATUS_INDENT_LEFT := 40
OF_STATUS_INDENT_RIGHT := 40
##export OF_HIDE_NOTCH := 1
##export OF_CLOCK_POS := 1
OF_ALLOW_DISABLE_NAVBAR := 0
 


# use system (ROM) fingerprint where available
##export OF_USE_SYSTEM_FINGERPRINT := 1

