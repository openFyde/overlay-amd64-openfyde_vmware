# Copyright 2022 Fyde Innovations. All rights reserved.
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.

EAPI=7

inherit cros-unibuild

DESCRIPTION="ChromeOS model configuration"
HOMEPAGE="https://chromium.googlesource.com/chromiumos/platform2/+/HEAD/chromeos-config/README.md"

LICENSE="BSD-Google"
SLOT="0"
KEYWORDS="*"

RDEPEND="
	chromeos-base/device-appid
	chromeos-base/auto-expand-partition
	chromeos-base/apple-touchpad-bcm5974
	sys-firmware/mssl1680-firmware
	sys-apps/haveged
	chromeos-base/fydeos-gestures-config
	media-libs/lpe-support-topology
	chromeos-base/intel-lpe-audio-config
	chromeos-base/flash_player
	chromeos-base/fydeos-input-util
	chromeos-base/vga-switcher
	virtual/gentoo-extra-pkgs
	dev-libs/libdnet
	app-emulation/open-vm-tools
"

DEPEND="${RDEPEND}"

S="${WORKDIR}"

src_install() {
	install_model_files
}
