# Copyright (c) 2022 Fyde Innovations Limited and the openFyde Authors.
# Distributed under the license specified in the root directory of this project.

EAPI="4"

DESCRIPTION="empty project"
HOMEPAGE="http://fydeos.com"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"
IUSE="kernel-5_10"

RDEPEND="
    virtual/fydemina
    chromeos-base/chromeos-config-bsp
    chromeos-base/chromeos-bsp-amd64-openfyde_vmware
"

DEPEND="${RDEPEND}"
