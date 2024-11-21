# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit dune

DESCRIPTION="Package dependency solver"
HOMEPAGE="https://docs.0install.net/developers/solver/"
SRC_URI="https://github.com/${PN}/${PN}/releases/download/v${PV}/${P}.tbz"

LICENSE="LGPL-2.1+"
SLOT="0"
KEYWORDS="~amd64"

IUSE="+ocamlopt"

RDEPEND="
	dev-ml/lwt:=[ocamlopt?]
	dev-ml/ocurl:=[ocamlopt?]
	dev-ml/yojson:=[ocamlopt?]
	dev-ml/xmlm:=
"

RESTRICT="test"

src_compile() {
	dune-compile 0install-solver 0install
}

src_install() {
	dune-install 0install-solver 0install
}
