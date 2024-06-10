# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

TEXLIVE_MODULE_CONTENTS="
	collection-latex.r69131
	ae.r15878
	amscls.r55378
	amsmath.r68720
	atbegshi.r53051
	atveryend.r53108
	auxhook.r53173
	babel.r69742
	babel-english.r44495
	babelbib.r57349
	bigintcalc.r53172
	bitset.r53837
	bookmark.r69084
	carlisle.r59577
	colortbl.r64015
	epstopdf-pkg.r53546
	etexcmds.r53171
	fancyhdr.r64977
	firstaid.r68720
	fix2col.r38770
	geometry.r61719
	gettitlestring.r53170
	graphics.r66204
	graphics-cfg.r41448
	grfext.r53024
	hopatch.r65491
	hycolor.r53584
	hyperref.r69523
	intcalc.r53168
	kvdefinekeys.r53193
	kvoptions.r63622
	kvsetkeys.r64632
	l3backend.r69310
	l3kernel.r69537
	l3packages.r68507
	latex.r69443
	latex-bin.r66186
	latex-fonts.r28888
	latex-lab.r68720
	latexconfig.r68923
	letltxmacro.r53022
	ltxcmds.r69032
	ltxmisc.r21927
	mfnfss.r46036
	mptopdf.r69363
	natbib.r20668
	oberdiek.r69038
	pagesel.r56105
	pdfescape.r53082
	pdftexcmds.r55777
	pslatex.r67469
	psnfss.r54694
	pspicture.r15878
	refcount.r53164
	rerunfilecheck.r63869
	stringenc.r52982
	tools.r68941
	uniquecounter.r53162
	url.r32528
"
TEXLIVE_MODULE_DOC_CONTENTS="
	ae.doc.r15878
	amscls.doc.r55378
	amsmath.doc.r68720
	atbegshi.doc.r53051
	atveryend.doc.r53108
	auxhook.doc.r53173
	babel.doc.r69742
	babel-english.doc.r44495
	babelbib.doc.r57349
	bigintcalc.doc.r53172
	bitset.doc.r53837
	bookmark.doc.r69084
	carlisle.doc.r59577
	colortbl.doc.r64015
	epstopdf-pkg.doc.r53546
	etexcmds.doc.r53171
	fancyhdr.doc.r64977
	firstaid.doc.r68720
	fix2col.doc.r38770
	geometry.doc.r61719
	gettitlestring.doc.r53170
	graphics.doc.r66204
	graphics-cfg.doc.r41448
	grfext.doc.r53024
	hopatch.doc.r65491
	hycolor.doc.r53584
	hyperref.doc.r69523
	intcalc.doc.r53168
	kvdefinekeys.doc.r53193
	kvoptions.doc.r63622
	kvsetkeys.doc.r64632
	l3backend.doc.r69310
	l3kernel.doc.r69537
	l3packages.doc.r68507
	latex.doc.r69443
	latex-bin.doc.r66186
	latex-fonts.doc.r28888
	latex-lab.doc.r68720
	letltxmacro.doc.r53022
	ltxcmds.doc.r69032
	mfnfss.doc.r46036
	mptopdf.doc.r69363
	natbib.doc.r20668
	oberdiek.doc.r69038
	pagesel.doc.r56105
	pdfescape.doc.r53082
	pdftexcmds.doc.r55777
	psnfss.doc.r54694
	pspicture.doc.r15878
	refcount.doc.r53164
	rerunfilecheck.doc.r63869
	stringenc.doc.r52982
	tools.doc.r68941
	uniquecounter.doc.r53162
	url.doc.r32528
"
TEXLIVE_MODULE_SRC_CONTENTS="
	ae.source.r15878
	amscls.source.r55378
	amsmath.source.r68720
	atbegshi.source.r53051
	atveryend.source.r53108
	auxhook.source.r53173
	babel.source.r69742
	babel-english.source.r44495
	bigintcalc.source.r53172
	bitset.source.r53837
	bookmark.source.r69084
	carlisle.source.r59577
	colortbl.source.r64015
	epstopdf-pkg.source.r53546
	etexcmds.source.r53171
	fancyhdr.source.r64977
	firstaid.source.r68720
	fix2col.source.r38770
	geometry.source.r61719
	gettitlestring.source.r53170
	graphics.source.r66204
	grfext.source.r53024
	hopatch.source.r65491
	hycolor.source.r53584
	hyperref.source.r69523
	intcalc.source.r53168
	kvdefinekeys.source.r53193
	kvoptions.source.r63622
	kvsetkeys.source.r64632
	l3backend.source.r69310
	l3kernel.source.r69537
	l3packages.source.r68507
	latex.source.r69443
	latex-lab.source.r68720
	letltxmacro.source.r53022
	ltxcmds.source.r69032
	mfnfss.source.r46036
	natbib.source.r20668
	oberdiek.source.r69038
	pagesel.source.r56105
	pdfescape.source.r53082
	pdftexcmds.source.r55777
	pslatex.source.r67469
	psnfss.source.r54694
	pspicture.source.r15878
	refcount.source.r53164
	rerunfilecheck.source.r63869
	stringenc.source.r52982
	tools.source.r68941
	uniquecounter.source.r53162
"

inherit texlive-module

DESCRIPTION="TeXLive LaTeX fundamental packages"

LICENSE="GPL-1+ GPL-2 LPPL-1.0 LPPL-1.3 LPPL-1.3c public-domain"
SLOT="0"
KEYWORDS="~amd64 ~arm64 ~loong ~ppc ~ppc64 ~riscv ~s390 ~sparc ~x86"
COMMON_DEPEND="
	>=dev-texlive/texlive-basic-2023
"
RDEPEND="
	${COMMON_DEPEND}
	!<dev-texlive/texlive-latexrecommended-2023
"
DEPEND="
	${COMMON_DEPEND}
"

TEXLIVE_MODULE_BINSCRIPTS="
	texmf-dist/scripts/context/perl/mptopdf.pl
"
