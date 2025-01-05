# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
GST_ORG_MODULE=gst-plugins-good

inherit gstreamer-meson

DESCRIPTION="HTTP client source/sink plugin for GStreamer"
KEYWORDS="~alpha amd64 arm arm64 ~hppa ~loong ~mips ppc ppc64 ~riscv ~sparc x86 ~x64-macos"

RDEPEND="
	|| (
		>=net-libs/libsoup-3.0:3.0[${MULTILIB_USEDEP}]
		>=net-libs/libsoup-2.48:2.4[${MULTILIB_USEDEP}]
	)
"
DEPEND="${RDEPEND}"
