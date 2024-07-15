# Copyright 2021-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CRATES="
	addr2line@0.22.0
	adler@1.0.2
	aead@0.5.2
	aes-gcm@0.10.3
	aes@0.8.4
	ahash@0.8.11
	aho-corasick@1.1.3
	aligned@0.4.2
	android-tzdata@0.1.1
	android_system_properties@0.1.5
	anstream@0.6.14
	anstyle-parse@0.2.4
	anstyle-query@1.1.0
	anstyle-wincon@3.0.3
	anstyle@1.0.7
	anyhow@1.0.76
	as-slice@0.2.1
	ascii-canvas@3.0.0
	assert_cmd@2.0.13
	async-trait@0.1.80
	autocfg@1.3.0
	backtrace@0.3.73
	base16ct@0.2.0
	base64@0.21.7
	base64@0.22.1
	base64ct@1.6.0
	bindgen@0.68.1
	bit-set@0.5.3
	bit-vec@0.6.3
	bitflags@1.3.2
	bitflags@2.5.0
	block-buffer@0.10.4
	block-padding@0.3.3
	blowfish@0.9.1
	botan-sys@0.10.5
	botan@0.10.7
	bstr@1.9.1
	buffered-reader@1.3.1
	bumpalo@3.16.0
	byteorder@1.5.0
	bytes@1.6.0
	bzip2-sys@0.1.11+1.0.8
	bzip2@0.4.4
	camellia@0.1.0
	capnp-futures@0.19.0
	capnp-rpc@0.19.2
	capnp@0.19.6
	capnpc@0.19.0
	cast5@0.11.1
	cc@1.0.99
	cexpr@0.6.0
	cfb-mode@0.8.2
	cfg-if@1.0.0
	chrono@0.4.38
	cipher@0.4.4
	clang-sys@1.8.1
	clap@4.4.18
	clap_builder@4.4.18
	clap_complete@4.4.10
	clap_derive@4.4.7
	clap_lex@0.6.0
	cmac@0.7.2
	colorchoice@1.0.1
	console@0.15.8
	const-oid@0.9.6
	core-foundation-sys@0.8.6
	core-foundation@0.9.4
	cpufeatures@0.2.12
	crc32fast@1.4.2
	crossbeam-channel@0.5.13
	crossbeam-deque@0.8.5
	crossbeam-epoch@0.9.18
	crossbeam-queue@0.3.11
	crossbeam-utils@0.8.20
	crossbeam@0.8.4
	crunchy@0.2.2
	crypto-bigint@0.5.5
	crypto-common@0.1.6
	ctor@0.2.8
	ctr@0.9.2
	curve25519-dalek-derive@0.1.1
	curve25519-dalek@4.1.2
	cvt@0.1.2
	data-encoding@2.6.0
	dbl@0.3.2
	der@0.7.9
	deranged@0.3.11
	des@0.8.1
	deunicode@1.6.0
	difflib@0.4.0
	digest@0.10.7
	dircpy@0.3.16
	directories@5.0.1
	dirs-next@2.0.0
	dirs-sys-next@0.1.2
	dirs-sys@0.4.1
	dirs@5.0.1
	displaydoc@0.2.4
	doc-comment@0.3.3
	dot-writer@0.1.3
	dsa@0.6.3
	dyn-clone@1.0.17
	eax@0.5.0
	ecb@0.1.2
	ecdsa@0.16.9
	ed25519-dalek@2.1.1
	ed25519@2.2.3
	either@1.12.0
	elliptic-curve@0.13.8
	embedded-io@0.6.1
	ena@0.14.3
	encode_unicode@0.3.6
	encoding_rs@0.8.34
	endian-type@0.1.2
	enum-as-inner@0.6.0
	enumber@0.3.1
	env_logger@0.10.2
	equivalent@1.0.1
	errno@0.3.9
	fallible-iterator@0.3.0
	fallible-streaming-iterator@0.1.9
	fastrand@2.1.0
	fd-lock@4.0.2
	fehler-macros@1.0.0
	fehler@1.0.0
	ff@0.13.0
	fiat-crypto@0.2.9
	file_diff@1.0.0
	filetime@0.2.23
	fixedbitset@0.4.2
	flate2@1.0.30
	float-cmp@0.9.0
	fnv@1.0.7
	foreign-types-shared@0.1.1
	foreign-types@0.3.2
	form_urlencoded@1.2.1
	fs2@0.4.3
	fs_at@0.1.10
	futures-channel@0.3.30
	futures-core@0.3.30
	futures-executor@0.3.30
	futures-io@0.3.30
	futures-macro@0.3.30
	futures-sink@0.3.30
	futures-task@0.3.30
	futures-util@0.3.30
	futures@0.3.30
	generator@0.7.5
	generic-array@0.14.7
	gethostname@0.4.3
	getopts@0.2.21
	getrandom@0.2.15
	ghash@0.5.1
	gimli@0.29.0
	git-testament-derive@0.2.0
	git-testament@0.2.5
	glob@0.3.1
	globset@0.4.14
	globwalk@0.9.1
	group@0.13.0
	h2@0.3.26
	hashbrown@0.12.3
	hashbrown@0.14.5
	hashlink@0.9.1
	heck@0.4.1
	hermit-abi@0.3.9
	hickory-client@0.24.1
	hickory-proto@0.24.1
	hickory-resolver@0.24.1
	hkdf@0.12.4
	hmac@0.12.1
	hostname@0.3.1
	html-escape@0.2.13
	http-body@0.4.6
	http@0.2.12
	httparse@1.9.3
	httpdate@1.0.3
	humansize@2.1.3
	humantime@2.1.0
	hyper-tls@0.5.0
	hyper@0.14.29
	iana-time-zone-haiku@0.1.2
	iana-time-zone@0.1.60
	icu_collections@1.5.0
	icu_locid@1.5.0
	icu_locid_transform@1.5.0
	icu_locid_transform_data@1.5.0
	icu_normalizer@1.5.0
	icu_normalizer_data@1.5.0
	icu_properties@1.5.0
	icu_properties_data@1.5.0
	icu_provider@1.5.0
	icu_provider_macros@1.5.0
	idea@0.5.1
	idna@0.4.0
	idna@0.5.0
	idna@1.0.0
	ignore@0.4.22
	indexmap@1.9.3
	indexmap@2.2.6
	indicatif@0.17.8
	inout@0.1.3
	instant@0.1.13
	ipconfig@0.3.2
	ipnet@2.9.0
	is-terminal@0.4.12
	is_terminal_polyfill@1.70.0
	itertools@0.11.0
	itoa@1.0.11
	js-sys@0.3.69
	jwalk@0.8.1
	lalrpop-util@0.20.2
	lalrpop@0.20.2
	lazy_static@1.4.0
	lazycell@1.3.0
	libc@0.2.155
	libloading@0.8.3
	libm@0.2.8
	libredox@0.1.3
	libsqlite3-sys@0.28.0
	line-col@0.2.1
	linked-hash-map@0.5.6
	linux-raw-sys@0.4.14
	litemap@0.7.3
	lock_api@0.4.12
	log@0.4.21
	loom@0.5.6
	lru-cache@0.1.2
	match_cfg@0.1.0
	matchers@0.1.0
	md-5@0.10.6
	memchr@2.7.4
	memsec@0.6.3
	memsec@0.7.0
	mime@0.3.17
	minimal-lexical@0.2.1
	miniz_oxide@0.7.3
	mio@0.8.11
	native-tls@0.2.12
	nettle-sys@2.3.0
	nettle@7.4.0
	new_debug_unreachable@1.0.6
	nibble_vec@0.1.0
	nix@0.26.4
	nom@7.1.3
	normalize-line-endings@0.3.0
	normpath@1.1.0
	nu-ansi-term@0.46.0
	num-bigint-dig@0.8.4
	num-conv@0.1.0
	num-integer@0.1.46
	num-iter@0.1.45
	num-traits@0.2.19
	num_cpus@1.16.0
	number_prefix@0.4.0
	object@0.36.0
	once_cell@1.19.0
	opaque-debug@0.3.1
	openpgp-cert-d@0.3.2
	openssl-macros@0.1.1
	openssl-probe@0.1.5
	openssl-sys@0.9.102
	openssl@0.10.64
	option-ext@0.2.0
	overload@0.1.1
	p256@0.13.2
	parking_lot@0.12.3
	parking_lot_core@0.9.10
	paste@1.0.15
	peeking_take_while@0.1.2
	pem-rfc7468@0.7.0
	percent-encoding@2.3.1
	pest@2.7.10
	pest_derive@2.7.10
	pest_generator@2.7.10
	pest_meta@2.7.10
	petgraph@0.6.5
	phf_shared@0.10.0
	pikchr@0.1.3
	pin-project-lite@0.2.14
	pin-utils@0.1.0
	pkcs1@0.7.5
	pkcs8@0.10.2
	pkg-config@0.3.30
	platforms@3.4.0
	polyval@0.6.2
	portable-atomic@1.6.0
	powerfmt@0.2.0
	ppv-lite86@0.2.17
	precomputed-hash@0.1.1
	predicates-core@1.0.6
	predicates-tree@1.0.9
	predicates@3.1.0
	primeorder@0.13.6
	proc-macro2@1.0.85
	pulldown-cmark@0.9.6
	quick-error@1.2.3
	quote@1.0.36
	radix_trie@0.2.1
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	rayon-core@1.12.1
	rayon@1.10.0
	redox_syscall@0.4.1
	redox_syscall@0.5.2
	redox_users@0.4.5
	regex-automata@0.1.10
	regex-automata@0.4.7
	regex-syntax@0.6.29
	regex-syntax@0.8.4
	regex@1.10.5
	remove_dir_all@0.8.2
	reqwest@0.11.27
	resolv-conf@0.7.0
	rfc6979@0.4.0
	ripemd@0.1.3
	roadmap@0.5.0
	roff@0.2.1
	rpassword@7.3.1
	rsa@0.9.6
	rtoolbox@0.0.2
	rusqlite@0.31.0
	rustc-demangle@0.1.24
	rustc-hash@1.1.0
	rustc_version@0.4.0
	rustix@0.38.34
	rustls-pemfile@1.0.4
	rustversion@1.0.17
	ryu@1.0.18
	same-file@1.0.6
	schannel@0.1.23
	scoped-tls@1.0.1
	scopeguard@1.2.0
	sec1@0.7.3
	security-framework-sys@2.11.0
	security-framework@2.11.0
	semver@1.0.23
	sequoia-autocrypt@0.25.1
	sequoia-cert-store@0.6.0
	sequoia-directories@0.1.0
	sequoia-gpg-agent@0.4.1
	sequoia-ipc@0.35.0
	sequoia-keystore-backend@0.5.0
	sequoia-keystore-gpg-agent@0.3.0
	sequoia-keystore-softkeys@0.5.0
	sequoia-keystore@0.5.0
	sequoia-net@0.28.0
	sequoia-openpgp@1.20.0
	sequoia-policy-config@0.6.0
	sequoia-wot@0.12.0
	serde-aux@4.5.0
	serde@1.0.203
	serde_derive@1.0.203
	serde_json@1.0.117
	serde_urlencoded@0.7.1
	serde_yaml@0.8.26
	serde_yaml@0.9.34+deprecated
	sha1collisiondetection@0.3.4
	sha2@0.10.8
	sharded-slab@0.1.7
	shell-words@1.1.0
	shlex@1.3.0
	signature@2.2.0
	siphasher@0.3.11
	slab@0.4.9
	slug@0.1.5
	smallvec@1.13.2
	smawk@0.3.2
	socket2@0.5.7
	spin@0.5.2
	spki@0.7.3
	stable_deref_trait@1.2.0
	state@0.5.3
	stfu8@0.2.7
	string_cache@0.8.7
	strsim@0.10.0
	subplot-build@0.9.0
	subplot@0.9.0
	subplotlib-derive@0.9.0
	subplotlib@0.9.0
	subtle@2.5.0
	syn@1.0.109
	syn@2.0.66
	sync_wrapper@0.1.2
	synstructure@0.13.1
	system-configuration-sys@0.5.0
	system-configuration@0.5.1
	tempfile-fast@0.3.4
	tempfile@3.10.1
	tera@1.20.0
	term@0.7.0
	termcolor@1.4.1
	terminal_size@0.3.0
	termtree@0.4.1
	textwrap@0.15.2
	thiserror-impl@1.0.61
	thiserror@1.0.61
	thread_local@1.1.8
	time-core@0.1.2
	time-macros@0.2.18
	time@0.3.36
	tiny-keccak@2.0.2
	tinystr@0.7.6
	tinyvec@1.6.0
	tinyvec_macros@0.1.1
	tokio-macros@2.3.0
	tokio-native-tls@0.3.1
	tokio-util@0.7.11
	tokio@1.38.0
	toml@0.5.11
	tower-service@0.3.2
	tracing-attributes@0.1.27
	tracing-core@0.1.32
	tracing-log@0.2.0
	tracing-subscriber@0.3.18
	tracing@0.1.40
	try-lock@0.2.5
	twofish@0.7.1
	typenum@1.17.0
	ucd-trie@0.1.6
	unescape@0.1.0
	unic-char-property@0.9.0
	unic-char-range@0.9.0
	unic-common@0.9.0
	unic-segment@0.9.0
	unic-ucd-segment@0.9.0
	unic-ucd-version@0.9.0
	unicase@2.7.0
	unicode-bidi@0.3.15
	unicode-ident@1.0.12
	unicode-linebreak@0.1.5
	unicode-normalization@0.1.23
	unicode-width@0.1.13
	unicode-xid@0.2.4
	universal-hash@0.5.1
	unsafe-libyaml@0.2.11
	url@2.5.1
	utf16_iter@1.0.5
	utf8-width@0.1.7
	utf8_iter@1.0.4
	utf8parse@0.2.2
	valuable@0.1.0
	vcpkg@0.2.15
	version_check@0.9.4
	wait-timeout@0.2.0
	walkdir@2.5.0
	want@0.3.1
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.92
	wasm-bindgen-futures@0.4.42
	wasm-bindgen-macro-support@0.2.92
	wasm-bindgen-macro@0.2.92
	wasm-bindgen-shared@0.2.92
	wasm-bindgen@0.2.92
	web-sys@0.3.69
	widestring@1.1.0
	win-crypto-ng@0.5.1
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.8
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-core@0.52.0
	windows-sys@0.45.0
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-targets@0.42.2
	windows-targets@0.48.5
	windows-targets@0.52.5
	windows@0.48.0
	windows_aarch64_gnullvm@0.42.2
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.5
	windows_aarch64_msvc@0.42.2
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.5
	windows_i686_gnu@0.42.2
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.5
	windows_i686_gnullvm@0.52.5
	windows_i686_msvc@0.42.2
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.5
	windows_x86_64_gnu@0.42.2
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.5
	windows_x86_64_gnullvm@0.42.2
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.5
	windows_x86_64_msvc@0.42.2
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.5
	winreg@0.50.0
	write16@1.0.0
	writeable@0.5.5
	x25519-dalek@2.0.1
	xxhash-rust@0.8.10
	yaml-rust@0.4.5
	yoke-derive@0.7.4
	yoke@0.7.4
	z-base-32@0.1.4
	zerocopy-derive@0.7.34
	zerocopy@0.7.34
	zerofrom-derive@0.1.4
	zerofrom@0.1.4
	zeroize@1.8.1
	zeroize_derive@1.4.2
	zerovec-derive@0.10.2
	zerovec@0.10.2
"

LLVM_COMPAT=( {16..18} )

inherit cargo shell-completion llvm-r1

DESCRIPTION="CLI of the Sequoia OpenPGP implementation"
HOMEPAGE="https://sequoia-pgp.org/ https://gitlab.com/sequoia-pgp/sequoia-sq"
SRC_URI="
	https://gitlab.com/sequoia-pgp/sequoia-sq/-/archive/v${PV}/${PN}-v${PV}.tar.bz2
	${CARGO_CRATE_URIS}
"
S="${WORKDIR}"/${PN}-v${PV}

LICENSE="LGPL-2.1+"
# Dependent crate licenses
LICENSE+="
	Apache-2.0 BSD Boost-1.0 CC0-1.0 ISC LGPL-2+ MIT MIT-0 MPL-2.0
	Unicode-3.0 Unicode-DFS-2016
	|| ( GPL-2 GPL-3 LGPL-3 )
"
SLOT="0"
KEYWORDS="amd64 ~arm64 ~ppc64"

QA_FLAGS_IGNORED="usr/bin/sq"

COMMON_DEPEND="
	dev-db/sqlite:3
	dev-libs/gmp:=
	dev-libs/nettle:=
	dev-libs/openssl:=
"
DEPEND="
	${COMMON_DEPEND}
	dev-libs/capnproto
"
RDEPEND="
	${COMMON_DEPEND}
"
# Clang needed for bindgen
BDEPEND="
	$(llvm_gen_dep '
		sys-devel/clang:${LLVM_SLOT}
	')
	virtual/pkgconfig
	>=virtual/rust-1.70
"

src_compile() {
	# Set this here so that it doesn't change if we run tests
	# and cause a recompilation.
	asset_dir="${T}"/assets
	export ASSET_OUT_DIR="${asset_dir}"

	# Setting CARGO_TARGET_DIR is required to have the build system
	# create the bash and zsh completion files.
	export CARGO_TARGET_DIR="${S}/target"
	cargo_src_compile
}

src_install() {
	cargo_src_install

	doman "${asset_dir}"/man-pages/*

	local completion_dir="${asset_dir}"/shell-completions
	newbashcomp "${completion_dir}"/sq.bash sq
	dozshcomp "${completion_dir}"/_sq
	dofishcomp "${completion_dir}"/sq.fish
}
