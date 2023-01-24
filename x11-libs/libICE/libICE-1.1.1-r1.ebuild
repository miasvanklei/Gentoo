# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

XORG_MULTILIB=yes
XORG_TARBALL_SUFFIX="xz"
inherit xorg-3

DESCRIPTION="X.Org Inter-Client Exchange library"
KEYWORDS="~alpha amd64 arm arm64 ~hppa ~ia64 ~loong ~m68k ~mips ~ppc ppc64 ~riscv ~s390 ~sparc x86 ~x64-cygwin ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~sparc-solaris ~sparc64-solaris ~x64-solaris ~x86-solaris ~x86-winnt"

RDEPEND="
	elibc_glibc? (
		|| ( >=sys-libs/glibc-2.36 dev-libs/libbsd[${MULTILIB_USEDEP}] )
	)
"
DEPEND="${RDEPEND}
	x11-base/xorg-proto
	x11-libs/xtrans
"

XORG_CONFIGURE_OPTIONS=(
	--enable-ipv6
	--disable-docs
	--disable-specs
	--without-fop
)
