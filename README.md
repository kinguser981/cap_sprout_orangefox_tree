# OrangeFox Custom Recovery Tree
![cap_sprout](https://xiaomitools.com/wp-content/uploads/2020/04/of_forums_header_v2_hed_2-1024x432.jpg)

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
- [X] Internal Storage (Yes, decryption works!)
- [X] External Storage (Both OTG and MicroSD.)
- [X] Touchpanel
- [X] Brightness
- [X] Vibration/Haptic
- [X] ADB Sideload
- [X] MTP
- [X] Flashlight

# Notes
- Despite using A/B partition scheme, this device has dedicated ramdisk (recovery partition). So just flash it like in any other A-only partition: `fastboot flash recovery OrangeFox-name.img`, it will automatically flash in the active slot.

```
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
# SPDX-License-Identifier: Apache-2.0
```
