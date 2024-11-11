# Copyright 2023-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.13.1

EAPI=8

CRATES="
	aead@0.5.2
	aes-gcm@0.10.3
	aes@0.8.3
	aho-corasick@1.1.2
	android-tzdata@0.1.1
	android_system_properties@0.1.5
	anstyle@1.0.4
	anyhow@1.0.79
	ascii-canvas@3.0.0
	assert_cmd@2.0.13
	autocfg@1.1.0
	base16ct@0.2.0
	base64@0.21.7
	base64ct@1.6.0
	bindgen@0.68.1
	bit-set@0.5.3
	bit-vec@0.6.3
	bitflags@1.3.2
	bitflags@2.4.2
	block-buffer@0.10.4
	block-padding@0.3.3
	blowfish@0.9.1
	botan-sys@0.10.5
	botan@0.10.7
	bstr@1.9.0
	buffered-reader@1.3.0
	bumpalo@3.14.0
	byteorder@1.5.0
	camellia@0.1.0
	cast5@0.11.1
	cc@1.0.83
	cdylib-link-lines@0.1.4
	cexpr@0.6.0
	cfb-mode@0.8.2
	cfg-if@1.0.0
	chrono@0.4.32
	cipher@0.4.4
	clang-sys@1.7.0
	cmac@0.7.2
	const-oid@0.9.6
	core-foundation-sys@0.8.6
	cpufeatures@0.2.12
	crunchy@0.2.2
	crypto-bigint@0.5.5
	crypto-common@0.1.6
	ctr@0.9.2
	curve25519-dalek-derive@0.1.1
	curve25519-dalek@4.1.1
	dbl@0.3.2
	der@0.7.8
	des@0.8.1
	diff@0.1.13
	difflib@0.4.0
	digest@0.10.7
	dirs-next@2.0.0
	dirs-sys-next@0.1.2
	doc-comment@0.3.3
	dsa@0.6.2
	dyn-clone@1.0.16
	eax@0.5.0
	ecb@0.1.2
	ecdsa@0.16.9
	ed25519-dalek@2.1.0
	ed25519@2.2.3
	either@1.9.0
	elliptic-curve@0.13.8
	ena@0.14.2
	equivalent@1.0.1
	errno@0.3.8
	fastrand@2.0.1
	ff@0.13.0
	fiat-crypto@0.2.5
	fixedbitset@0.4.2
	foreign-types-shared@0.1.1
	foreign-types@0.3.2
	generic-array@0.14.7
	getrandom@0.2.12
	ghash@0.5.0
	glob@0.3.1
	group@0.13.0
	hashbrown@0.14.3
	hermit-abi@0.3.4
	hkdf@0.12.4
	hmac@0.12.1
	iana-time-zone-haiku@0.1.2
	iana-time-zone@0.1.59
	idea@0.5.1
	idna@0.4.0
	indexmap@2.1.0
	inout@0.1.3
	is-terminal@0.4.10
	itertools@0.10.5
	js-sys@0.3.67
	lalrpop-util@0.20.0
	lalrpop@0.20.0
	lazy_static@1.4.0
	lazycell@1.3.0
	libc@0.2.152
	libloading@0.8.1
	libm@0.2.8
	libredox@0.0.1
	linux-raw-sys@0.4.13
	lock_api@0.4.11
	log@0.4.20
	md-5@0.10.6
	memchr@2.7.1
	memsec@0.6.3
	minimal-lexical@0.2.1
	nettle-sys@2.3.0
	nettle@7.3.0
	new_debug_unreachable@1.0.4
	nom@7.1.3
	num-bigint-dig@0.8.4
	num-integer@0.1.45
	num-iter@0.1.43
	num-traits@0.2.17
	once_cell@1.19.0
	opaque-debug@0.3.0
	openssl-macros@0.1.1
	openssl-sys@0.9.99
	openssl@0.10.63
	p256@0.13.2
	parking_lot@0.12.1
	parking_lot_core@0.9.9
	peeking_take_while@0.1.2
	pem-rfc7468@0.7.0
	petgraph@0.6.4
	phf_shared@0.10.0
	pkcs1@0.7.5
	pkcs8@0.10.2
	pkg-config@0.3.29
	platforms@3.3.0
	polyval@0.6.1
	ppv-lite86@0.2.17
	precomputed-hash@0.1.1
	predicates-core@1.0.6
	predicates-tree@1.0.9
	predicates@3.1.0
	primeorder@0.13.6
	proc-macro2@1.0.78
	quote@1.0.35
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	redox_syscall@0.4.1
	redox_users@0.4.4
	regex-automata@0.4.4
	regex-syntax@0.7.5
	regex-syntax@0.8.2
	regex@1.10.3
	rfc6979@0.4.0
	ripemd@0.1.3
	rsa@0.9.6
	rustc-hash@1.1.0
	rustc_version@0.4.0
	rustix@0.38.30
	rustversion@1.0.14
	scopeguard@1.2.0
	sec1@0.7.3
	semver@1.0.21
	sequoia-openpgp@1.17.0
	sequoia-policy-config@0.6.0
	serde@1.0.195
	serde_derive@1.0.195
	sha1collisiondetection@0.3.3
	sha2@0.10.8
	shlex@1.3.0
	signature@2.2.0
	siphasher@0.3.11
	smallvec@1.13.1
	spin@0.5.2
	spki@0.7.3
	string_cache@0.8.7
	subtle@2.5.0
	syn@2.0.48
	tempfile@3.9.0
	term@0.7.0
	termtree@0.4.1
	thiserror-impl@1.0.56
	thiserror@1.0.56
	tiny-keccak@2.0.2
	tinyvec@1.6.0
	tinyvec_macros@0.1.1
	toml@0.5.11
	twofish@0.7.1
	typenum@1.17.0
	unicode-bidi@0.3.15
	unicode-ident@1.0.12
	unicode-normalization@0.1.22
	unicode-xid@0.2.4
	universal-hash@0.5.1
	vcpkg@0.2.15
	version_check@0.9.4
	wait-timeout@0.2.0
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.90
	wasm-bindgen-macro-support@0.2.90
	wasm-bindgen-macro@0.2.90
	wasm-bindgen-shared@0.2.90
	wasm-bindgen@0.2.90
	win-crypto-ng@0.5.1
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-core@0.52.0
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-targets@0.48.5
	windows-targets@0.52.0
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.0
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.0
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.0
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.0
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.0
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.0
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.0
	x25519-dalek@2.0.0
	xxhash-rust@0.8.8
	zeroize@1.7.0
	zeroize_derive@1.4.2
"

LLVM_COMPAT=( 17 )
RUST_NEEDS_LLVM=1

inherit cargo llvm-r1

DESCRIPTION="Implementation of the RPM PGP interface using Sequoia"
HOMEPAGE="https://sequoia-pgp.org/ https://github.com/rpm-software-management/rpm-sequoia"
SRC_URI="
	https://github.com/rpm-software-management/rpm-sequoia/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
	${CARGO_CRATE_URIS}
"

LICENSE="LGPL-2+"
# Dependent crate licenses
LICENSE+="
	Apache-2.0 BSD Boost-1.0 CC0-1.0 ISC LGPL-2+ MIT Unicode-DFS-2016
	|| ( GPL-2 GPL-3 LGPL-3 )
"
SLOT="0"
KEYWORDS="amd64 ~arm arm64 ~loong ~ppc ~sparc ~x86"
IUSE="nettle +openssl"
REQUIRED_USE="^^ ( nettle openssl )"

DEPEND="
	nettle? ( dev-libs/nettle:= )
	openssl? ( dev-libs/openssl:= )
"
RDEPEND="${DEPEND}"
# Clang is required for bindgen
BDEPEND="
	virtual/pkgconfig
	nettle? ( $(llvm_gen_dep 'sys-devel/clang:${LLVM_SLOT}') )
"

QA_FLAGS_IGNORED="usr/lib.*/librpm_sequoia.so.1"

pkg_setup() {
	llvm-r1_pkg_setup
	rust_pkg_setup
}

llvm_check_deps() {
	if use nettle; then
		has_version -b "sys-devel/clang:${LLVM_SLOT}"
	fi
}

src_configure() {
	local myfeatures=(
		$(usev nettle crypto-nettle)
		$(usev openssl crypto-openssl)
	)
	cargo_src_configure --no-default-features
}

src_compile() {
	# These variables will be used to generate the pkgconfig file.
	PREFIX="${EPREFIX}/usr" LIBDIR="${PREFIX}"/$(get_libdir) cargo_src_compile
}

src_install() {
	newlib.so "$(cargo_target_dir)"/librpm_sequoia.so librpm_sequoia.so.1
	dosym librpm_sequoia.so.1 /usr/$(get_libdir)/librpm_sequoia.so

	insinto /usr/$(get_libdir)/pkgconfig
	# build.rs sets the output dir to be target/<PROFILE>, so don't use helper.
	doins target/$(usex debug debug release)/rpm-sequoia.pc
}
