# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.13.2

EAPI=8

CRATES="
	addr2line@0.21.0
	adler@1.0.2
	aho-corasick@1.1.2
	android-tzdata@0.1.1
	android_system_properties@0.1.5
	anstyle@1.0.4
	anyhow@1.0.79
	autocfg@1.1.0
	backtrace@0.3.69
	base64@0.21.5
	bitflags@1.3.2
	bitflags@2.4.1
	block-buffer@0.10.4
	bumpalo@3.14.0
	byteorder@1.5.0
	bytes@1.5.0
	cc@1.0.83
	cfg-if@1.0.0
	chrono@0.4.31
	clap@4.4.12
	clap_builder@4.4.12
	clap_lex@0.6.0
	cookie@0.16.2
	core-foundation-sys@0.8.6
	cpufeatures@0.2.11
	crc32fast@1.3.2
	crossbeam-utils@0.8.18
	crypto-common@0.1.6
	deranged@0.3.11
	digest@0.10.7
	dirs-sys@0.3.7
	dirs@4.0.0
	equivalent@1.0.1
	errno@0.3.8
	fastrand@2.0.1
	flate2@1.0.28
	fnv@1.0.7
	form_urlencoded@1.2.1
	futures-channel@0.3.30
	futures-core@0.3.30
	futures-sink@0.3.30
	futures-task@0.3.30
	futures-util@0.3.30
	generic-array@0.14.7
	getrandom@0.2.11
	gimli@0.28.1
	h2@0.3.22
	hashbrown@0.12.3
	hashbrown@0.14.3
	headers-core@0.2.0
	headers@0.3.9
	http-body@0.4.6
	http@0.2.11
	httparse@1.8.0
	httpdate@1.0.3
	hyper@0.14.28
	iana-time-zone-haiku@0.1.2
	iana-time-zone@0.1.59
	idna@0.5.0
	indexmap@1.9.3
	indexmap@2.1.0
	itoa@1.0.10
	js-sys@0.3.66
	lazy_static@1.4.0
	libc@0.2.151
	libredox@0.0.1
	line-wrap@0.1.1
	linked-hash-map@0.5.6
	linux-raw-sys@0.4.12
	log@0.4.20
	marionette@0.5.0
	memchr@2.7.1
	mime@0.3.17
	mime_guess@2.0.4
	miniz_oxide@0.7.1
	mio@0.8.10
	mozdevice@0.5.2
	mozprofile@0.9.2
	mozrunner@0.15.2
	mozversion@0.5.2
	num-traits@0.2.17
	object@0.32.2
	once_cell@1.19.0
	percent-encoding@2.3.1
	pin-project-internal@1.1.3
	pin-project-lite@0.2.13
	pin-project@1.1.3
	pin-utils@0.1.0
	plist@1.6.0
	powerfmt@0.2.0
	proc-macro2@1.0.74
	quick-xml@0.31.0
	quote@1.0.35
	redox_syscall@0.4.1
	redox_users@0.4.4
	regex-automata@0.4.3
	regex-syntax@0.8.2
	regex@1.10.2
	rust-ini@0.10.3
	rustc-demangle@0.1.23
	rustix@0.38.28
	rustls-pemfile@1.0.4
	ryu@1.0.16
	safemem@0.3.3
	same-file@1.0.6
	scoped-tls@1.0.1
	semver@1.0.21
	serde@1.0.194
	serde_derive@1.0.194
	serde_json@1.0.110
	serde_repr@0.1.18
	serde_urlencoded@0.7.1
	serde_yaml@0.8.26
	sha1@0.10.6
	slab@0.4.9
	socket2@0.5.5
	strsim@0.10.0
	syn@2.0.46
	tempfile@3.9.0
	terminal_size@0.3.0
	thiserror-impl@1.0.56
	thiserror@1.0.56
	time-core@0.1.2
	time-macros@0.2.16
	time@0.3.31
	tinyvec@1.6.0
	tinyvec_macros@0.1.1
	tokio-stream@0.1.14
	tokio-util@0.7.10
	tokio@1.35.1
	tower-service@0.3.2
	tracing-core@0.1.32
	tracing@0.1.40
	try-lock@0.2.5
	typenum@1.17.0
	unicase@2.7.0
	unicode-bidi@0.3.14
	unicode-ident@1.0.12
	unicode-normalization@0.1.22
	unicode-segmentation@1.10.1
	unix_path@1.0.1
	unix_str@1.0.0
	url@2.5.0
	uuid@1.6.1
	version_check@0.9.4
	walkdir@2.4.0
	want@0.3.1
	warp@0.3.6
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.89
	wasm-bindgen-macro-support@0.2.89
	wasm-bindgen-macro@0.2.89
	wasm-bindgen-shared@0.2.89
	wasm-bindgen@0.2.89
	webdriver@0.50.0
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.6
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
	winreg@0.10.1
	yaml-rust@0.4.5
	zip@0.6.6
"

inherit cargo

DESCRIPTION="Proxy for using WebDriver clients to interact with Gecko-based browsers"
HOMEPAGE="https://firefox-source-docs.mozilla.org/testing/geckodriver/ https://github.com/mozilla/geckodriver"
SRC_URI="https://github.com/mozilla/geckodriver/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
	${CARGO_CRATE_URIS}"

LICENSE="MPL-2.0"
# Dependent crate licenses
LICENSE+=" Apache-2.0 MIT MPL-2.0 Unicode-DFS-2016"
SLOT="0"
KEYWORDS="~amd64"

IUSE="unchained"

RDEPEND="!www-client/firefox[geckodriver]"

pkg_setup() {
	QA_FLAGS_IGNORED="/usr/$(get_libdir)/firefox/geckodriver"
}

src_prepare() {
	# Apply the unchained patch from https://github.com/rafiibrahim8/geckodriver-unchained -
	# makes geckodriver available on Gecko-based non-Firefox browsers, e.g. Librewolf.
	# bgo#930568
	use unchained && eapply "${FILESDIR}"/geckodriver-0.34.0-firefox-125.0-unchained.patch

	default
}

src_install() {
	einstalldocs

	mkdir -p "${D}"/usr/$(get_libdir)/firefox || die "Failed to create /usr/lib*/firefox directory."
	exeinto /usr/$(get_libdir)/firefox
	doexe target/release/geckodriver
	dosym -r /usr/$(get_libdir)/firefox/geckodriver /usr/bin/geckodriver
}
