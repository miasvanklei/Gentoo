# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Backports of GHC deriving extensions"
HOMEPAGE="https://github.com/haskell-compat/deriving-compat"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="amd64 ~arm64 ~ppc64 ~riscv ~x86"

RDEPEND=">=dev-haskell/th-abstraction-0.4:=[profile?] <dev-haskell/th-abstraction-0.5:=[profile?]
	>=dev-haskell/transformers-compat-0.5:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/base-compat-0.8.1 <dev-haskell/base-compat-1
		>=dev-haskell/base-orphans-0.5 <dev-haskell/base-orphans-1
		>=dev-haskell/hspec-1.8
		>=dev-haskell/quickcheck-2 <dev-haskell/quickcheck-3
		>=dev-haskell/tagged-0.7 <dev-haskell/tagged-1
		>=dev-haskell/void-0.5.10 <dev-haskell/void-1 )
"
