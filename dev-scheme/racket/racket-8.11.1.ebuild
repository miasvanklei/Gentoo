# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit desktop optfeature toolchain-funcs readme.gentoo-r1

DESCRIPTION="General purpose, multi-paradigm Lisp-Scheme programming language"
HOMEPAGE="https://racket-lang.org/
	https://github.com/racket/racket/"
SRC_URI="
	minimal? ( https://download.racket-lang.org/installers/${PV}/${PN}-minimal-${PV}-src-builtpkgs.tgz )
	!minimal? ( https://download.racket-lang.org/installers/${PV}/${P}-src-builtpkgs.tgz )
"
S="${WORKDIR}/${P}/src"

# See https://blog.racket-lang.org/2019/11/completing-racket-s-relicensing-effort.html
LICENSE="
	|| ( MIT Apache-2.0 )
	chez? ( Apache-2.0 )
	!chez? ( LGPL-3 )
"
# Bytecode generated by Racket is not compatible between versions.
# The bytecode version should be denoted by SLOT, in most cases
# PV == SLOT but this has to be checked carefully and in cases
# where we use _p, _pre, etc it will have to be set manually.
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~ppc ~ppc64 ~x86"
IUSE="+chez +doc +futures iconv +jit minimal ncurses +places +threads"
# See bug #809785 re chez/threads
REQUIRED_USE="chez? ( futures places ) futures? ( jit threads ) places? ( threads )"

RDEPEND="
	dev-db/sqlite:3
	dev-libs/libffi:=
	ncurses? ( sys-libs/ncurses:= )
"
DEPEND="${RDEPEND}"

# "mred" and "mzscheme" are binaries generated by Racket, not CC
QA_FLAGS_IGNORED="usr/bin/mred usr/bin/mzscheme"

DOC_CONTENTS="
If you wish to use sys-libs/readline instead of dev-libs/libedit
for readline-like features in the Racket's REPL you can install
the package 'readline-gpl' using raco, Racket's package manager
https://pkgs.racket-lang.org/package/readline-gpl
"

# Package database files (for pkg_preinst & pkg_config)
PKGDB=(
	/usr/share/racket/info-cache.rktd
	/usr/share/racket/links.rktd
	/usr/share/racket/pkgs/pkgs.rktd
)

src_prepare() {
	# Prepare the environment.
	unset PLTADDONDIR PLTCOLLECTS PLTCONFIGDIR PLTUSERHOME

	default

	# Remove bundled libffi.
	rm -r "${S}/bc/foreign/libffi" || die "failed to remove bundled libffi"
}

src_configure() {
	# Compilation of Zuo does not respect the autoconf configuration.
	tc-export CC

	einfo "Configuring Zuo in ${S}/zuo"
	pushd "${S}/zuo" >/dev/null || die
	econf
	popd >/dev/null || die

	einfo "Configuring Racket in ${S}"
	# Libtool:
	#   According to vapier, we should use the bundled libtool
	#   such that we don't preclude cross-compile.
	#   Thus don't use --enable-lt=/usr/bin/libtool
	# Backend:
	#   --enable-bc builds Racket w/o chez backend
	# C Libraries:
	#   --enable-libs & --disable-shared is the way to build
	#   .a files that are needed to embed Racket into programs
	#   https://docs.racket-lang.org/inside/cs-embedding.html
	local -a myconf=(
		--disable-shared
		--disable-strip
		--docdir="${EPREFIX}/usr/share/doc/${PF}"
		--enable-libs
		$(usex chez "--enable-cs --enable-csonly" "--enable-bc --enable-bconly")
		$(use_enable doc docs)
		$(use_enable iconv)
		$(use_enable ncurses curses)
	)
	# Some options are togglable only for the BC version (are forced in CS)
	! use chez && myconf+=(
			--enable-float
			--enable-foreign
			--enable-gracket
			--enable-libffi
			$(use_enable futures)
			$(use_enable jit)
			$(use_enable places)
			$(use_enable threads pthread)
		)
	econf "${myconf[@]}"
}

src_compile() {
	# Compile Racket.
	CC_FOR_BUILD="$(tc-getCC)" default

	# Recompile Zuo with optimizations.
	emake -C zuo
}

src_install() {
	# Install Racket.
	default

	# Install Zuo.
	emake -C zuo DESTDIR="${ED}" install

	# raco needs decompressed files for packages doc installation, bug #662424
	use doc && docompress -x "/usr/share/doc/${PF}"

	# Create missing desktop files and icon.
	if ! use minimal ; then
		newicon "${ED}/usr/share/racket/drracket-exe-icon.png" racket.png

		make_desktop_entry "gracket" "GRacket" "racket" "Development;Education;"
		make_desktop_entry "plt-games" "PLT Games" "racket" "Education;Game;"
	fi

	readme.gentoo_create_doc
}

pkg_preinst() {
	# If we are merging the same SLOT check if package
	# database files exist and do not overwrite them
	if has_version "${CATEGORY}/${PN}:${SLOT}" ; then
		echo "We are installing the same SLOT: ${SLOT}"

		local rktd
		for rktd in "${PKGDB[@]}" ; do
			if [[ -f "${EROOT}/${rktd}" ]] && [[ -f "${ED}/${rktd}" ]] ; then
				einfo "Keeping old file: ${rktd}"

				mv "${ED}/${rktd}" "${ED}/${rktd}.bak" ||
					die "failed to create a backup of ${rktd}"

				cp "${EROOT}/${rktd}" "${ED}/${rktd}" ||
					die "failed to create a copy of ${rktd}"
			fi
		done
	fi
}

get_outsiders() {
	racket -l raco -- pkg show -i | grep 'link' | sed 's|link.*||g'
}

pkg_postinst() {
	# If we have any pkgs not included in Racket main distribution (outsiders),
	# then we have to re-setup them or during installation other pkgs will want
	# to recompile parts of "outsider" pkgs they depend upon (and fail).
	local -a outsiders=( $(get_outsiders) )
	if [[ -n "${outsiders[@]}" ]] ; then
		ebegin "Running \"raco setup\" for outsider packages"
		echo "Outsiders: ${outsiders[@]}"

		raco setup --all-users --force --no-docs --no-user --pkgs "${outsiders[@]}"
		eend 0  # do not fail
	fi

	optfeature "readline editing features in REPL" dev-libs/libedit
	optfeature "generating PDF files using Scribble" dev-texlive/texlive-fontsextra

	readme.gentoo_print_elog
}
