# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# NOTICE: Before packaging we have to run "ResGen" and "GetDependencies".
# See: https://git.alpinelinux.org/aports/tree/community/powershell/APKBUILD
# The repackaged tarball contains the C# code generated by that subproject.

EAPI=8

DOTNET_PKG_COMPAT=8.0
NUGET_APIS=(
	"https://api.nuget.org/v3-flatcontainer"
	"https://www.powershellgallery.com/api/v2"
)
NUGETS="
dotnetanalyzers.documentationanalyzers.unstable@1.0.0.59
dotnetanalyzers.documentationanalyzers@1.0.0-beta.59
jetbrains.annotations@2021.2.0
json.more.net@1.9.0
jsonpointer.net@3.0.3
jsonschema.net@5.2.6
markdig.signed@0.33.0
microsoft.applicationinsights@2.21.0
microsoft.bcl.asyncinterfaces@5.0.0
microsoft.codeanalysis.analyzers@3.3.4
microsoft.codeanalysis.common@4.8.0-2.final
microsoft.codeanalysis.csharp@4.8.0-2.final
microsoft.codecoverage@17.7.2
microsoft.extensions.objectpool@5.0.10
microsoft.management.infrastructure.runtime.unix@3.0.0
microsoft.management.infrastructure.runtime.win@3.0.0
microsoft.management.infrastructure@3.0.0
microsoft.net.test.sdk@17.7.2
microsoft.netcore.platforms@1.1.0
microsoft.netcore.platforms@3.1.0
microsoft.netcore.targets@1.1.0
microsoft.powershell.markdownrender@7.2.1
microsoft.powershell.native@7.4.0
microsoft.security.extensions@1.2.0
microsoft.testplatform.objectmodel@17.7.2
microsoft.testplatform.testhost@17.7.2
microsoft.win32.primitives@4.3.0
microsoft.win32.registry.accesscontrol@8.0.0
microsoft.win32.registry@4.7.0
microsoft.win32.systemevents@8.0.0
microsoft.windows.compatibility@8.0.0
netstandard.library@1.6.1
netstandard.library@2.0.3
newtonsoft.json@13.0.1
newtonsoft.json@13.0.3
nuget.frameworks@6.5.0
runtime.any.system.collections@4.3.0
runtime.any.system.diagnostics.tools@4.3.0
runtime.any.system.diagnostics.tracing@4.3.0
runtime.any.system.globalization.calendars@4.3.0
runtime.any.system.globalization@4.3.0
runtime.any.system.io@4.3.0
runtime.any.system.reflection.extensions@4.3.0
runtime.any.system.reflection.primitives@4.3.0
runtime.any.system.reflection@4.3.0
runtime.any.system.resources.resourcemanager@4.3.0
runtime.any.system.runtime.handles@4.3.0
runtime.any.system.runtime.interopservices@4.3.0
runtime.any.system.runtime@4.3.0
runtime.any.system.text.encoding.extensions@4.3.0
runtime.any.system.text.encoding@4.3.0
runtime.any.system.threading.tasks@4.3.0
runtime.any.system.threading.timer@4.3.0
runtime.debian.8-x64.runtime.native.system.security.cryptography.openssl@4.3.0
runtime.fedora.23-x64.runtime.native.system.security.cryptography.openssl@4.3.0
runtime.fedora.24-x64.runtime.native.system.security.cryptography.openssl@4.3.0
runtime.linux-arm.runtime.native.system.io.ports@8.0.0
runtime.linux-arm64.runtime.native.system.io.ports@8.0.0
runtime.linux-x64.runtime.native.system.io.ports@8.0.0
runtime.native.system.data.sqlclient.sni@4.7.0
runtime.native.system.io.compression@4.3.0
runtime.native.system.io.ports@8.0.0
runtime.native.system.net.http@4.3.0
runtime.native.system.security.cryptography.apple@4.3.0
runtime.native.system.security.cryptography.openssl@4.3.0
runtime.native.system@4.3.0
runtime.opensuse.13.2-x64.runtime.native.system.security.cryptography.openssl@4.3.0
runtime.opensuse.42.1-x64.runtime.native.system.security.cryptography.openssl@4.3.0
runtime.osx-arm64.runtime.native.system.io.ports@8.0.0
runtime.osx-x64.runtime.native.system.io.ports@8.0.0
runtime.osx.10.10-x64.runtime.native.system.security.cryptography.apple@4.3.0
runtime.osx.10.10-x64.runtime.native.system.security.cryptography.openssl@4.3.0
runtime.rhel.7-x64.runtime.native.system.security.cryptography.openssl@4.3.0
runtime.ubuntu.14.04-x64.runtime.native.system.security.cryptography.openssl@4.3.0
runtime.ubuntu.16.04-x64.runtime.native.system.security.cryptography.openssl@4.3.0
runtime.ubuntu.16.10-x64.runtime.native.system.security.cryptography.openssl@4.3.0
runtime.unix.microsoft.win32.primitives@4.3.0
runtime.unix.system.console@4.3.0
runtime.unix.system.diagnostics.debug@4.3.0
runtime.unix.system.io.filesystem@4.3.0
runtime.unix.system.net.primitives@4.3.0
runtime.unix.system.net.sockets@4.3.0
runtime.unix.system.private.uri@4.3.0
runtime.unix.system.runtime.extensions@4.3.0
runtime.win-arm64.runtime.native.system.data.sqlclient.sni@4.4.0
runtime.win-x64.runtime.native.system.data.sqlclient.sni@4.4.0
runtime.win-x86.runtime.native.system.data.sqlclient.sni@4.4.0
stylecop.analyzers.unstable@1.2.0.507
stylecop.analyzers@1.2.0-beta.507
system.appcontext@4.3.0
system.buffers@4.3.0
system.buffers@4.5.1
system.codedom@8.0.0
system.collections.concurrent@4.3.0
system.collections.immutable@7.0.0
system.collections@4.3.0
system.componentmodel.composition.registration@8.0.0
system.componentmodel.composition@8.0.0
system.configuration.configurationmanager@8.0.0
system.console@4.3.0
system.data.odbc@8.0.0
system.data.oledb@8.0.0
system.data.sqlclient@4.8.5
system.diagnostics.debug@4.3.0
system.diagnostics.diagnosticsource@4.3.0
system.diagnostics.diagnosticsource@8.0.0
system.diagnostics.eventlog@8.0.0
system.diagnostics.performancecounter@8.0.0
system.diagnostics.tools@4.3.0
system.diagnostics.tracing@4.3.0
system.directoryservices.accountmanagement@8.0.0
system.directoryservices.protocols@8.0.0
system.directoryservices@8.0.0
system.drawing.common@8.0.0
system.formats.asn1@6.0.0
system.formats.asn1@8.0.0
system.globalization.calendars@4.3.0
system.globalization.extensions@4.3.0
system.globalization@4.3.0
system.io.compression.zipfile@4.3.0
system.io.compression@4.3.0
system.io.filesystem.primitives@4.3.0
system.io.filesystem@4.3.0
system.io.packaging@8.0.0
system.io.ports@8.0.0
system.io@4.3.0
system.linq.expressions@4.3.0
system.linq@4.3.0
system.management@8.0.0
system.memory@4.5.5
system.net.http.winhttphandler@8.0.0
system.net.http@4.3.0
system.net.nameresolution@4.3.0
system.net.primitives@4.3.0
system.net.sockets@4.3.0
system.numerics.vectors@4.4.0
system.numerics.vectors@4.5.0
system.objectmodel@4.3.0
system.private.servicemodel@4.10.3
system.private.uri@4.3.0
system.reflection.context@8.0.0
system.reflection.dispatchproxy@4.7.1
system.reflection.emit.ilgeneration@4.3.0
system.reflection.emit.lightweight@4.3.0
system.reflection.emit@4.3.0
system.reflection.extensions@4.3.0
system.reflection.metadata@1.6.0
system.reflection.metadata@7.0.0
system.reflection.primitives@4.3.0
system.reflection.typeextensions@4.3.0
system.reflection@4.3.0
system.resources.resourcemanager@4.3.0
system.runtime.caching@8.0.0
system.runtime.compilerservices.unsafe@6.0.0
system.runtime.extensions@4.3.0
system.runtime.handles@4.3.0
system.runtime.interopservices.runtimeinformation@4.3.0
system.runtime.interopservices@4.3.0
system.runtime.numerics@4.3.0
system.runtime@4.3.0
system.security.accesscontrol@4.7.0
system.security.accesscontrol@6.0.0
system.security.accesscontrol@6.0.2-mauipre.1.22102.15
system.security.claims@4.3.0
system.security.cryptography.algorithms@4.3.0
system.security.cryptography.cng@4.3.0
system.security.cryptography.csp@4.3.0
system.security.cryptography.encoding@4.3.0
system.security.cryptography.openssl@4.3.0
system.security.cryptography.pkcs@6.0.1
system.security.cryptography.pkcs@8.0.0
system.security.cryptography.primitives@4.3.0
system.security.cryptography.protecteddata@8.0.0
system.security.cryptography.x509certificates@4.3.0
system.security.cryptography.xml@6.0.1
system.security.cryptography.xml@8.0.0
system.security.permissions@8.0.0
system.security.principal.windows@4.3.0
system.security.principal.windows@4.7.0
system.security.principal.windows@5.0.0
system.security.principal@4.3.0
system.servicemodel.duplex@4.10.3
system.servicemodel.http@4.10.3
system.servicemodel.nettcp@4.10.3
system.servicemodel.primitives@4.10.3
system.servicemodel.security@4.10.3
system.servicemodel.syndication@8.0.0
system.serviceprocess.servicecontroller@8.0.0
system.speech@8.0.0
system.text.encoding.codepages@7.0.0
system.text.encoding.codepages@8.0.0
system.text.encoding.extensions@4.3.0
system.text.encoding@4.3.0
system.text.encodings.web@6.0.0
system.text.encodings.web@8.0.0
system.text.json@6.0.2
system.text.regularexpressions@4.3.0
system.threading.accesscontrol@8.0.0
system.threading.tasks.extensions@4.3.0
system.threading.tasks.extensions@4.5.4
system.threading.tasks@4.3.0
system.threading.threadpool@4.3.0
system.threading.timer@4.3.0
system.threading@4.3.0
system.web.services.description@4.10.0
system.windows.extensions@8.0.0
system.xml.readerwriter@4.3.0
system.xml.xdocument@4.3.0
validation@2.4.18
xunit.abstractions@2.0.2
xunit.abstractions@2.0.3
xunit.analyzers@1.2.0
xunit.assert@2.5.0
xunit.core@2.5.0
xunit.extensibility.core@2.4.0
xunit.extensibility.core@2.5.0
xunit.extensibility.execution@2.4.0
xunit.extensibility.execution@2.5.0
xunit.runner.visualstudio@2.5.3
xunit.skippablefact@1.4.13
xunit@2.5.0
xunitxml.testlogger@3.1.17
"

# Additional PowerShell Gallery modules.
NUGETS+="
microsoft.powershell.archive@1.2.5
microsoft.powershell.psresourceget@1.0.1
packagemanagement@1.4.8.1
powershellget@2.2.5
psreadline@2.3.4
threadjob@2.0.3
"

inherit check-reqs desktop dotnet-pkg xdg

DESCRIPTION="Cross-platform automation and configuration tool"
HOMEPAGE="https://microsoft.com/powershell/
	https://github.com/PowerShell/PowerShell/"

if [[ "${PV}" == *9999* ]] ; then
	inherit git-r3

	EGIT_REPO_URI="https://github.com/PowerShell/PowerShell.git"
else
	SRC_URI="https://dev.gentoo.org/~xgqt/distfiles/repackaged/${P}.tar.xz"

	KEYWORDS="~amd64 ~arm ~arm64"
fi

SRC_URI+=" ${NUGET_URIS} "

LICENSE="MIT"
SLOT="$(ver_cut 1-2)"
RESTRICT="test"  # TODO: "LibraryImports.g.cs" not found.

RDEPEND="
	>=dev-libs/libpsl-native-7.4.0:=
	sys-libs/pam:0/0
"
DEPEND="
	${RDEPEND}
"
IDEPEND="
	app-eselect/eselect-pwsh
"

CHECKREQS_DISK_BUILD="2G"
DOTNET_PKG_PROJECTS=(
	src/powershell-unix/powershell-unix.csproj
	src/Modules/PSGalleryModules.csproj
)
# Lower warning level to skip CS0162 error for the "disable-telemetry" patch.
DOTNET_PKG_BUILD_EXTRA_ARGS=(
	-p:WarningLevel=1
)
PATCHES=(
	"${FILESDIR}/pwsh-7.3.3-disable-telemetry.patch"
	"${FILESDIR}/pwsh-7.3.3-disable-update-check.patch"
)

DOCS=( CHANGELOG CHANGELOG.md CODE_OF_CONDUCT.md README.md docs )

pkg_setup() {
	check-reqs_pkg_setup
	dotnet-pkg_pkg_setup
}

src_unpack() {
	dotnet-pkg_src_unpack

	if [[ -n "${EGIT_REPO_URI}" ]] ; then
		git-r3_src_unpack
	fi
}

src_prepare() {
	dotnet-pkg_src_prepare

	# This is guarded by "RegexGitVersion" in "PowerShell.Common.props".
	local fake_describe="v${PV}-0-g0"
	sed -i "s|git describe --abbrev=60 --long|echo ${fake_describe}|" \
		PowerShell.Common.props || die

	echo "v${PV}" > powershell.version || die
}

src_compile() {
	einfo 'Copying DLL files for the missing "ref" directory'
	edotnet fsi "${FILESDIR}/pwsh-7.3.3-copy-ref.fsx" "${WORKDIR}/${P}_ref"

	dotnet-pkg_src_compile
}

src_install() {
	local dest_root="/usr/share/${PN}-${SLOT}"

	# Install additional PowerShell Gallery modules.
	local -a psg_modules=(
		Microsoft.PowerShell.Archive
		Microsoft.PowerShell.PSResourceGet
		PSReadLine
		PackageManagement
		PowerShellGet
		ThreadJob
	)
	local psg_module
	for psg_module in "${psg_modules[@]}" ; do
		insinto "${dest_root}/Modules/${psg_module}"
		doins -r "${NUGET_PACKAGES}/${psg_module,,}"/*
	done

	dotnet-pkg-base_append_launchervar \
		'PSModulePath="${PSModulePath}:${EPREFIX}/usr/share/GentooPowerShell/Modules:"'
	dotnet-pkg-base_install "${dest_root}"
	dotnet-pkg-base_dolauncher "${dest_root}/pwsh" "pwsh-${SLOT}"

	insinto "${dest_root}/ref"
	doins "${WORKDIR}/${P}_ref"/*

	# Remove "libpsl-native.so" provided by "microsoft.powershell.native".
	rm "${ED}/${dest_root}/libpsl-native.so" || die
	rm "${ED}/${dest_root}/libSystem.IO.Ports.Native.so" || die
	dosym -r "/usr/$(get_libdir)/libpsl-native.so" "${dest_root}/libpsl-native.so"

	newicon assets/ps_black_128.svg "powershell-${SLOT}.svg"
	make_desktop_entry "pwsh-${SLOT} -l" "PowerShell ${SLOT}" \
		"powershell-${SLOT}" "ConsoleOnly;System;" "Terminal=true"

	einstalldocs
}

pkg_postinst() {
	xdg_pkg_postinst

	eselect pwsh update ifunset
}

pkg_postrm() {
	xdg_pkg_postrm

	eselect pwsh update ifunset
}
