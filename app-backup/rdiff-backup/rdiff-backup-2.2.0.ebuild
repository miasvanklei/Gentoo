# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{8..10} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1

DESCRIPTION="Local/remote mirroring+incremental backup"
HOMEPAGE="https://github.com/rdiff-backup/rdiff-backup"
SRC_URI="https://github.com/rdiff-backup/${PN}/releases/download/v${PV}/${P}.tar.gz
	https://dev.gentoo.org/~voyageur/distfiles/${P}-manpages.tar.gz"
# Manpages need dev-ruby/asciidoctor

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~mips ~ppc ~ppc64 ~sparc ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos"
# Tests use a tox environment and separate steps for test env preparation
RESTRICT="test"

DEPEND="dev-python/setuptools_scm[${PYTHON_USEDEP}]
	>=net-libs/librsync-1.0:0="

RDEPEND="dev-python/pylibacl[${PYTHON_USEDEP}]
	dev-python/pyxattr[${PYTHON_USEDEP}]
	>=net-libs/librsync-1.0:0="

src_prepare() {
	mkdir build || die
	cp "${S}"-manpages/*.1 build || die

	sed -e "s#share/doc/${PN}#share/doc/${PF}#" -i setup.py || die
	default
}
