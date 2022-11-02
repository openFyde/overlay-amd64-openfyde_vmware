# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit multilib-build

DESCRIPTION="Virtual for OpenGL implementation"
SLOT="0"
KEYWORDS="*"

RDEPEND="
	x11-libs/libxshmfence
	|| (
		media-libs/mesa-llvmpipe[X(+),${MULTILIB_USEDEP}]
		dev-util/mingw64-runtime
	)"
