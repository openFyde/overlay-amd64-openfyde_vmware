# overlay-amd64-openfyde_vmware

![Logo badge](https://img.shields.io/endpoint?url=https%3A%2F%2Fopenfyde-badge-wivuxrq8xzvh.runkit.sh%2F) ![Release badge](https://img.shields.io/github/v/release/openFyde/overlay-amd64-openfyde_vmware?label=latest%20release%20image)


<br>

## Introduction
Same as Chromium OS, openFyde adopts the [Portage build and packaging system](https://wiki.gentoo.org/wiki/Portage) from Gentoo Linux. openFyde uses Portage with certain customisations to support building multiple targets (bootable OS system images) across different hardware architectures from a shared set of sources.

A **board** defines a target type, it can be either for a family of hardware devices or specifically for one type of device. For example, The board `amd64-openfyde` is a target type for an openFyde system image that aims to run on most recent PCs with amd64(x86_64) architecture; whilst the `rpi4-openfyde` board is a target type specifically for the infamous single-board computer [Raspberry Pi 4B](https://www.raspberrypi.com/products/raspberry-pi-4-model-b/). We usually append `-openfyde` to the board name in openFyde to differentiate between its siblings for FydeOS.

Each board has a corresponding **overlay** that defines the configuration for it. This includes details like CPU architecture, kernel configuration, as well as additional packages and USE flags.

<br>

## About this repository
This repository is the overlay for the `amd64-openfyde_vmware` board, it's part of the openFyde open-source project.

This repository contains the following packages:


| Packages                    | Description             | Reference |
|-----------------------------|-------------------------|-----------|
| app-emulation/open-vm-tools | package for vm tools	|           |
| chromeos-base/device-appid  | Setup device appid 	|           |
| media-libs		      | base libs for graphic	|           |
| kconfig 		      | kernelconfig  		|           |
<br>

## About the board `amd64-openfyde_vmware`
 - This board is a openFyde version for vmware which is similar with [amd64-vmware](https://fydeos.com/release/15.0/amd64-vmware).

 - For best use experience, suggest to use it on [VMware Workstation](https://www.vmware.com/products/workstation-pro.html) for Windows.

## Creating OVA files from bin image
Use `create-ova` script to convert chromium bin image to ova files. It does the following for you:
* Converting `chromiumos_test_image.bin` to vmdk format;
* Resizing vmdk to 15G;
* Creating a temp vmx file;
* Creating ova file.

Before using this script, you must configure relevant tool path in the beginning of the script.
