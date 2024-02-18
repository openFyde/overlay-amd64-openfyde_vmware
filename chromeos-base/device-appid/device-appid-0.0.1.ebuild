# Copyright (c) 2022 Fyde Innovations Limited and the openFyde Authors.
# Distributed under the license specified in the root directory of this project.

EAPI="7"

inherit appid2

DESCRIPTION="empty project"
HOMEPAGE="http://fydeos.com"

LICENSE="BSD-Google"
SLOT="0"
KEYWORDS="*"
IUSE=""

RDEPEND=""

DEPEND="${RDEPEND}"

S="${WORKDIR}"

src_install() {
  doappid "{D4D5E5BC-FF88-4522-9EB8-E4561D3F4236}" "CHROMEBOOK" "{D021AE22-761F-4D54-A94A-B06B05B79E51}"
}
