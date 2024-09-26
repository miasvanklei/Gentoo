# Copyright 2021-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# TODO: may be able to switch to pypi tarball next bump, also wouldn't hurt
# to build the formerly forgotten docs if the tarball includes them
# https://github.com/pytest-dev/pytest-bdd/issues/703

DISTUTILS_USE_PEP517=poetry
PYTHON_COMPAT=( python3_{10..13} )
inherit distutils-r1

DESCRIPTION="BDD library for the pytest runner"
HOMEPAGE="https://pytest-bdd.readthedocs.io/"
SRC_URI="
	https://github.com/pytest-dev/pytest-bdd/archive/refs/tags/${PV}.tar.gz
		-> ${P}.gh.tar.gz
"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm64 ~x86"

RDEPEND="
	dev-python/mako[${PYTHON_USEDEP}]
	dev-python/packaging[${PYTHON_USEDEP}]
	dev-python/parse[${PYTHON_USEDEP}]
	dev-python/parse-type[${PYTHON_USEDEP}]
	dev-python/pytest[${PYTHON_USEDEP}]
	dev-python/typing-extensions[${PYTHON_USEDEP}]
"

distutils_enable_tests pytest

DOCS=( AUTHORS.rst CHANGES.rst README.rst )

src_test() {
	# terminal_reporter test needs exact wrapping
	local -x COLUMNS=80

	# hooks output parsing may be affected by other pytest-*, e.g. tornasync
	local -x PYTEST_DISABLE_PLUGIN_AUTOLOAD=1
	local -x PYTEST_PLUGINS=pytest_bdd.plugin

	distutils-r1_src_test
}
