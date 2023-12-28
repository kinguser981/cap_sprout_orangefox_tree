# OrangeFox Custom Recovery Tree
![cap_sprout](https://wiki.orangefox.tech/banner.svg)

Buils your own OrangeFox custom recovery for Nokia 5.3 (CAP_sprout).

| Device                  | Nokia 5.3                                          |
| ----------------------- | ---------------------------------------------------------|
| SoC                     | Qualcomm SM6125 Snapdragon 665 (11 nm)                      |      
| CPU                     | Octa-core (4x2.0 GHz Kryo 260 Gold & 4x1.8 GHz Kryo 260 Silver)  |
| GPU                     | Adreno 610                                             |
| ROM                     | 64/128 GB Storage                 |
| RAM                     | 4 GB RAM                 |
| Model                   | CAP_sprout |

# Features
Auto updates in background/
Installing old releases/
Ability to create and edit OpenRecoveryScripts/
Beautiful UI/
No analytics/ads, small apk size/
Internal Storage (Yes, decryption works!)/
External Storage (Both OTG and MicroSD.)/
Touchpanel/
Brightness/
Vibration/Haptic/
ADB Sideload/
MTP/
Flashlight/
Synced with the latest Teamwin changes/
Designed with latest Material design 2 guidelines/
Implemented support for Flyme and MIUI OTA, and incremental block-based OTA in custom ROMs/
Included assorted customizations/
Inbuilt patches, like Magisk and password reset patch/
Several addons/
Password protection/
Fully open-source/
Frequently updated/
# Why OrangeFox Recovery?
We have been operating since early 2018. Since then we have improved the quality, stability, and device support of the recovery. Today OrangeFox is the leader in stability, UI design, and UX. Installing OrangeFox means being with the latest code and fastest fixes.

OrangeFox Recovery was originally designed for Xiaomi Redmi Note 4X Snapdragon (mido). Right now we support 50+ devices, with more than 5 million downloads from our official download server.

# Notes
- Despite using A/B partition scheme, this device has dedicated ramdisk (recovery partition). So just flash it like in any other A-only partition: `fastboot flash recovery OrangeFox-name.img`, it will automatically flash in the active slot.

```
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
# SPDX-License-Identifier: Apache-2.0
```
