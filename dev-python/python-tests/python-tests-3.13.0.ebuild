# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )

inherit python-r1 verify-sig

MY_PV=${PV/_}
MY_P="Python-${MY_PV%_p*}"
PYVER=$(ver_cut 1-2)
PATCHSET="python-gentoo-patches-${MY_PV}"

DESCRIPTION="Test modules from dev-lang/python"
HOMEPAGE="
	https://www.python.org/
	https://github.com/python/cpython/
"
SRC_URI="
	https://www.python.org/ftp/python/${PV%%_*}/${MY_P}.tar.xz
	https://dev.gentoo.org/~mgorny/dist/python/${PATCHSET}.tar.xz
	verify-sig? (
		https://www.python.org/ftp/python/${PV%%_*}/${MY_P}.tar.xz.asc
	)
"
S="${WORKDIR}/${MY_P}/Lib"

LICENSE="PSF-2"
SLOT="${PYVER}"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~loong ~m68k ~mips ppc ~ppc64 ~riscv ~s390 ~sparc x86"
REQUIRED_USE="${PYTHON_REQUIRED_USE}"

RDEPEND="
	${PYTHON_DEPS}
	~dev-lang/python-${PV}:${PYVER}
	!<dev-lang/python-3.13.0_rc1_p3-r1:${PYVER}
"
BDEPEND="
	${RDEPEND}
	verify-sig? ( >=sec-keys/openpgp-keys-python-20221025 )
"

VERIFY_SIG_OPENPGP_KEY_PATH=/usr/share/openpgp-keys/python.org.asc

src_unpack() {
	if use verify-sig; then
		verify-sig_verify_detached "${DISTDIR}"/${MY_P}.tar.xz{,.asc}
	fi
	default
}

src_prepare() {
	local PATCHES=(
		"${WORKDIR}/${PATCHSET}"
	)

	cd .. || die
	default
}

src_install() {
	python_setup
	# keep in sync with TESTSUBDIRS in Makefile.pre.in
	python_moduleinto "/usr/lib/python${PYVER}"
	python_domodule test
	python_moduleinto "/usr/lib/python${PYVER}/idlelib"
	python_domodule idlelib/idle_test
}
