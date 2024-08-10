# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

TEXLIVE_MODULE_CONTENTS="
	collection-binextra.r69527
	a2ping.r52964
	adhocfilelist.r29349
	arara.r68431
	bundledoc.r64620
	checklistings.r38300
	chklref.r52649
	clojure-pamphlet.r67201
	cluttex.r68912
	ctan-o-mat.r51578
	ctanbib.r68650
	ctanify.r44129
	ctanupload.r26313
	ctie.r66186
	cweb.r69586
	de-macro.r66746
	digestif.r65223
	dtl.r62387
	dtxgen.r51663
	dviasm.r68043
	dvicopy.r66186
	dviinfox.r59216
	dviout-util.r66186
	easydtx.r68514
	findhyph.r47444
	fragmaster.r26313
	git-latexdiff.r54732
	installfont.r31205
	ketcindy.r58661
	latex-git-log.r54010
	latex-papersize.r53131
	latex2man.r64477
	latex2nemeth.r65269
	latexfileversion.r29349
	latexindent.r69472
	latexpand.r66226
	light-latex-make.r66473
	listings-ext.r29349
	ltxfileinfo.r38663
	ltximg.r59335
	make4ht.r66130
	match_parens.r66681
	mflua.r62774
	mkjobtexmf.r29725
	optexcount.r59817
	patgen.r66186
	pdfbook2.r53521
	pdfcrop.r66862
	pdflatexpicscale.r46617
	pdftex-quiet.r49169
	pdftosrc.r66186
	pdfxup.r59001
	pfarrei.r68950
	pkfix.r26032
	pkfix-helper.r56061
	ppmcheckpdf.r69527
	purifyeps.r29725
	pythontex.r59514
	runtexshebang.r68882
	seetexk.r57972
	spix.r65050
	srcredact.r38710
	sty2dtx.r64967
	synctex.r66203
	tex4ebook.r66621
	texaccents.r64447
	texblend.r68961
	texcount.r49013
	texdef.r64967
	texdiff.r29752
	texdirflatten.r55064
	texdoc.r69672
	texfot.r68110
	texliveonfly.r55777
	texloganalyser.r54526
	texlogfilter.r62792
	texlogsieve.r69436
	texosquery.r53676
	texplate.r67201
	texware.r66186
	tie.r66186
	tlcockpit.r54857
	typeoutfileinfo.r67526
	web.r66186
	xindex.r67771
	xpdfopen.r65952
"
TEXLIVE_MODULE_DOC_CONTENTS="
	a2ping.doc.r52964
	adhocfilelist.doc.r29349
	arara.doc.r68431
	bundledoc.doc.r64620
	checklistings.doc.r38300
	chklref.doc.r52649
	clojure-pamphlet.doc.r67201
	cluttex.doc.r68912
	ctan-o-mat.doc.r51578
	ctan_chk.doc.r36304
	ctanbib.doc.r68650
	ctanify.doc.r44129
	ctanupload.doc.r26313
	ctie.doc.r66186
	cweb.doc.r69586
	de-macro.doc.r66746
	digestif.doc.r65223
	dtl.doc.r62387
	dtxgen.doc.r51663
	dviasm.doc.r68043
	dvicopy.doc.r66186
	dviinfox.doc.r59216
	dviout-util.doc.r66186
	easydtx.doc.r68514
	findhyph.doc.r47444
	fragmaster.doc.r26313
	git-latexdiff.doc.r54732
	hook-pre-commit-pkg.doc.r41378
	installfont.doc.r31205
	ketcindy.doc.r58661
	latex-git-log.doc.r54010
	latex-papersize.doc.r53131
	latex2man.doc.r64477
	latex2nemeth.doc.r65269
	latexfileversion.doc.r29349
	latexindent.doc.r69472
	latexpand.doc.r66226
	light-latex-make.doc.r66473
	listings-ext.doc.r29349
	ltxfileinfo.doc.r38663
	ltximg.doc.r59335
	make4ht.doc.r66130
	match_parens.doc.r66681
	mkjobtexmf.doc.r29725
	optexcount.doc.r59817
	patgen.doc.r66186
	pdfbook2.doc.r53521
	pdfcrop.doc.r66862
	pdflatexpicscale.doc.r46617
	pdftex-quiet.doc.r49169
	pdftosrc.doc.r66186
	pdfxup.doc.r59001
	pfarrei.doc.r68950
	pkfix.doc.r26032
	pkfix-helper.doc.r56061
	ppmcheckpdf.doc.r69527
	purifyeps.doc.r29725
	pythontex.doc.r59514
	runtexshebang.doc.r68882
	seetexk.doc.r57972
	spix.doc.r65050
	srcredact.doc.r38710
	sty2dtx.doc.r64967
	synctex.doc.r66203
	tex4ebook.doc.r66621
	texaccents.doc.r64447
	texblend.doc.r68961
	texcount.doc.r49013
	texdef.doc.r64967
	texdiff.doc.r29752
	texdirflatten.doc.r55064
	texdoc.doc.r69672
	texfot.doc.r68110
	texliveonfly.doc.r55777
	texloganalyser.doc.r54526
	texlogfilter.doc.r62792
	texlogsieve.doc.r69436
	texosquery.doc.r53676
	texplate.doc.r67201
	texware.doc.r66186
	tie.doc.r66186
	tlcockpit.doc.r54857
	typeoutfileinfo.doc.r67526
	web.doc.r66186
	xindex.doc.r67771
	xpdfopen.doc.r65952
"
TEXLIVE_MODULE_SRC_CONTENTS="
	adhocfilelist.source.r29349
	arara.source.r68431
	checklistings.source.r38300
	clojure-pamphlet.source.r67201
	listings-ext.source.r29349
	mkjobtexmf.source.r29725
	optexcount.source.r59817
	pfarrei.source.r68950
	pythontex.source.r59514
	texaccents.source.r64447
	texdef.source.r64967
	texosquery.source.r53676
	texplate.source.r67201
	tlcockpit.source.r54857
"

inherit texlive-module

DESCRIPTION="TeXLive TeX auxiliary programs"

LICENSE="Apache-2.0 Artistic BSD BSD-2 FDL-1.1+ GPL-1+ GPL-2 GPL-2+ GPL-3 GPL-3+ LGPL-3 LPPL-1.0 LPPL-1.2 LPPL-1.3 LPPL-1.3c MIT TeX TeX-other-free public-domain"
SLOT="0"
KEYWORDS="~alpha amd64 arm arm64 ~hppa ~ia64 ~loong ~mips ppc ppc64 ~riscv ~s390 ~sparc x86"
COMMON_DEPEND="
	>=dev-texlive/texlive-basic-2023
"
RDEPEND="
	${COMMON_DEPEND}
	>=app-text/dvisvgm-3.2
	>=app-text/pdfjam-3.10
	>=dev-tex/bibtexu-3.72
	>=dev-tex/latexdiff-1.3.3
	>=dev-tex/latexmk-4.83
"
DEPEND="
	${COMMON_DEPEND}
"

TEXLIVE_MODULE_BINSCRIPTS="
	texmf-dist/scripts/a2ping/a2ping.pl
	texmf-dist/scripts/adhocfilelist/adhocfilelist.sh
	texmf-dist/scripts/arara/arara.sh
	texmf-dist/scripts/bundledoc/arlatex
	texmf-dist/scripts/bundledoc/bundledoc
	texmf-dist/scripts/checklistings/checklistings.sh
	texmf-dist/scripts/chklref/chklref.pl
	texmf-dist/scripts/clojure-pamphlet/pamphletangler
	texmf-dist/scripts/cluttex/cluttex.lua
	texmf-dist/scripts/ctan-o-mat/ctan-o-mat.pl
	texmf-dist/scripts/ctanbib/ctanbib
	texmf-dist/scripts/ctanify/ctanify
	texmf-dist/scripts/ctanupload/ctanupload.pl
	texmf-dist/scripts/de-macro/de-macro
	texmf-dist/scripts/digestif/digestif.texlua
	texmf-dist/scripts/dtxgen/dtxgen
	texmf-dist/scripts/dviasm/dviasm.py
	texmf-dist/scripts/dviinfox/dviinfox.pl
	texmf-dist/scripts/easydtx/edtx2dtx.pl
	texmf-dist/scripts/findhyph/findhyph
	texmf-dist/scripts/fragmaster/fragmaster.pl
	texmf-dist/scripts/git-latexdiff/git-latexdiff
	texmf-dist/scripts/installfont/installfont-tl
	texmf-dist/scripts/ketcindy/ketcindy.pl
	texmf-dist/scripts/latex-git-log/latex-git-log
	texmf-dist/scripts/latex-papersize/latex-papersize.py
	texmf-dist/scripts/latex2man/latex2man
	texmf-dist/scripts/latex2nemeth/latex2nemeth
	texmf-dist/scripts/latexfileversion/latexfileversion
	texmf-dist/scripts/latexindent/latexindent.pl
	texmf-dist/scripts/latexpand/latexpand
	texmf-dist/scripts/light-latex-make/llmk.lua
	texmf-dist/scripts/listings-ext/listings-ext.sh
	texmf-dist/scripts/ltxfileinfo/ltxfileinfo
	texmf-dist/scripts/ltximg/ltximg.pl
	texmf-dist/scripts/make4ht/make4ht
	texmf-dist/scripts/match_parens/match_parens
	texmf-dist/scripts/mkjobtexmf/mkjobtexmf.pl
	texmf-dist/scripts/optexcount/optexcount
	texmf-dist/scripts/pdfcrop/pdfcrop.pl
	texmf-dist/scripts/pdflatexpicscale/pdflatexpicscale.pl
	texmf-dist/scripts/pdftex-quiet/pdftex-quiet
	texmf-dist/scripts/pdfxup/pdfxup
	texmf-dist/scripts/pfarrei/a5toa4.tlu
	texmf-dist/scripts/pfarrei/pfarrei.tlu
	texmf-dist/scripts/pkfix/pkfix.pl
	texmf-dist/scripts/pkfix-helper/pkfix-helper
	texmf-dist/scripts/purifyeps/purifyeps
	texmf-dist/scripts/pythontex/depythontex.py
	texmf-dist/scripts/pythontex/pythontex.py
	texmf-dist/scripts/runtexshebang/runtexshebang.lua
	texmf-dist/scripts/spix/spix.py
	texmf-dist/scripts/srcredact/srcredact.pl
	texmf-dist/scripts/sty2dtx/sty2dtx.pl
	texmf-dist/scripts/tex4ebook/tex4ebook
	texmf-dist/scripts/texaccents/texaccents.sno
	texmf-dist/scripts/texblend/texblend
	texmf-dist/scripts/texcount/texcount.pl
	texmf-dist/scripts/texdef/texdef.pl
	texmf-dist/scripts/texdiff/texdiff
	texmf-dist/scripts/texdirflatten/texdirflatten
	texmf-dist/scripts/texdoc/texdoc.tlu
	texmf-dist/scripts/texfot/texfot.pl
	texmf-dist/scripts/texliveonfly/texliveonfly.py
	texmf-dist/scripts/texloganalyser/texloganalyser
	texmf-dist/scripts/texlogfilter/texlogfilter
	texmf-dist/scripts/texlogsieve/texlogsieve
	texmf-dist/scripts/texosquery/texosquery-jre5.sh
	texmf-dist/scripts/texosquery/texosquery-jre8.sh
	texmf-dist/scripts/texosquery/texosquery.sh
	texmf-dist/scripts/texplate/texplate.sh
	texmf-dist/scripts/tlcockpit/tlcockpit.sh
	texmf-dist/scripts/typeoutfileinfo/typeoutfileinfo.sh
	texmf-dist/scripts/xindex/xindex.lua
"
TEXLIVE_SCRIPTS_W_FILE_EXT="
	listings-ext.sh
"

TEXLIVE_MODULE_BINLINKS="
	cluttex:clxelatex
	cluttex:cllualatex
	pdfcrop:rpdfcrop
	texdef:latexdef
"

src_install() {
	texlive-module_src_install
	keepdir /var/lib/texmf/web2c
}
