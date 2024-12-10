# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

TEXLIVE_MODULE_CONTENTS="
	collection-pstricks.r65367
	auto-pst-pdf.r56596
	bclogo.r69578
	dsptricks.r68753
	luapstricks.r67207
	makeplot.r15878
	pdftricks.r15878
	pdftricks2.r31016
	pedigree-perl.r64227
	psbao.r55013
	pst-2dplot.r15878
	pst-3d.r17257
	pst-3dplot.r68727
	pst-abspos.r15878
	pst-am.r19591
	pst-antiprism.r46643
	pst-arrow.r61069
	pst-asr.r22138
	pst-bar.r64331
	pst-barcode.r64182
	pst-bezier.r41981
	pst-blur.r15878
	pst-bspline.r40685
	pst-calculate.r49817
	pst-calendar.r60480
	pst-cie.r60959
	pst-circ.r72519
	pst-coil.r72030
	pst-contourplot.r48230
	pst-cox.r15878
	pst-dart.r60476
	pst-dbicons.r17556
	pst-diffraction.r71819
	pst-electricfield.r29803
	pst-eps.r15878
	pst-eucl.r66924
	pst-exa.r45289
	pst-feyn.r48781
	pst-fill.r60671
	pst-fit.r70686
	pst-flags.r65501
	pst-fr3d.r15878
	pst-fractal.r64714
	pst-fun.r17909
	pst-func.r70822
	pst-gantt.r35832
	pst-geo.r60387
	pst-geometrictools.r70953
	pst-gr3d.r15878
	pst-grad.r15878
	pst-graphicx.r21717
	pst-hsb.r66739
	pst-infixplot.r15878
	pst-intersect.r33210
	pst-jtree.r20946
	pst-knot.r16033
	pst-labo.r67147
	pst-layout.r29803
	pst-lens.r15878
	pst-light3d.r15878
	pst-lsystem.r49556
	pst-magneticfield.r69493
	pst-marble.r50925
	pst-math.r67535
	pst-mirror.r71294
	pst-moire.r60411
	pst-node.r71773
	pst-ob3d.r54514
	pst-ode.r69296
	pst-optexp.r62977
	pst-optic.r72694
	pst-osci.r68781
	pst-ovl.r54963
	pst-pad.r15878
	pst-pdf.r56622
	pst-pdgr.r45875
	pst-perspective.r39585
	pst-platon.r16538
	pst-plot.r65346
	pst-poker.r65818
	pst-poly.r35062
	pst-pulley.r62977
	pst-qtree.r15878
	pst-rputover.r44724
	pst-rubans.r23464
	pst-shell.r56070
	pst-sigsys.r21667
	pst-slpe.r24391
	pst-solarsystem.r69675
	pst-solides3d.r68786
	pst-soroban.r15878
	pst-spectra.r15878
	pst-spinner.r66115
	pst-stru.r38613
	pst-text.r49542
	pst-thick.r16369
	pst-tools.r60621
	pst-tree.r60421
	pst-turtle.r52261
	pst-tvz.r23451
	pst-uml.r15878
	pst-vectorian.r60488
	pst-vehicle.r61438
	pst-venn.r49316
	pst-vowel.r25228
	pst2pdf.r56172
	pstricks.r72868
	pstricks-add.r66887
	uml.r17476
	vaucanson-g.r15878
	vocaltract.r25629
"
TEXLIVE_MODULE_DOC_CONTENTS="
	auto-pst-pdf.doc.r56596
	bclogo.doc.r69578
	dsptricks.doc.r68753
	luapstricks.doc.r67207
	makeplot.doc.r15878
	pdftricks.doc.r15878
	pdftricks2.doc.r31016
	pedigree-perl.doc.r64227
	psbao.doc.r55013
	pst-2dplot.doc.r15878
	pst-3d.doc.r17257
	pst-3dplot.doc.r68727
	pst-abspos.doc.r15878
	pst-am.doc.r19591
	pst-antiprism.doc.r46643
	pst-arrow.doc.r61069
	pst-asr.doc.r22138
	pst-bar.doc.r64331
	pst-barcode.doc.r64182
	pst-bezier.doc.r41981
	pst-blur.doc.r15878
	pst-bspline.doc.r40685
	pst-calculate.doc.r49817
	pst-calendar.doc.r60480
	pst-cie.doc.r60959
	pst-circ.doc.r72519
	pst-coil.doc.r72030
	pst-contourplot.doc.r48230
	pst-cox.doc.r15878
	pst-dart.doc.r60476
	pst-dbicons.doc.r17556
	pst-diffraction.doc.r71819
	pst-electricfield.doc.r29803
	pst-eps.doc.r15878
	pst-eucl.doc.r66924
	pst-exa.doc.r45289
	pst-feyn.doc.r48781
	pst-fill.doc.r60671
	pst-fit.doc.r70686
	pst-flags.doc.r65501
	pst-fr3d.doc.r15878
	pst-fractal.doc.r64714
	pst-fun.doc.r17909
	pst-func.doc.r70822
	pst-gantt.doc.r35832
	pst-geo.doc.r60387
	pst-geometrictools.doc.r70953
	pst-gr3d.doc.r15878
	pst-grad.doc.r15878
	pst-graphicx.doc.r21717
	pst-hsb.doc.r66739
	pst-infixplot.doc.r15878
	pst-intersect.doc.r33210
	pst-jtree.doc.r20946
	pst-knot.doc.r16033
	pst-labo.doc.r67147
	pst-layout.doc.r29803
	pst-lens.doc.r15878
	pst-light3d.doc.r15878
	pst-lsystem.doc.r49556
	pst-magneticfield.doc.r69493
	pst-marble.doc.r50925
	pst-math.doc.r67535
	pst-mirror.doc.r71294
	pst-moire.doc.r60411
	pst-node.doc.r71773
	pst-ob3d.doc.r54514
	pst-ode.doc.r69296
	pst-optexp.doc.r62977
	pst-optic.doc.r72694
	pst-osci.doc.r68781
	pst-ovl.doc.r54963
	pst-pad.doc.r15878
	pst-pdf.doc.r56622
	pst-pdgr.doc.r45875
	pst-perspective.doc.r39585
	pst-platon.doc.r16538
	pst-plot.doc.r65346
	pst-poker.doc.r65818
	pst-poly.doc.r35062
	pst-pulley.doc.r62977
	pst-qtree.doc.r15878
	pst-rputover.doc.r44724
	pst-rubans.doc.r23464
	pst-shell.doc.r56070
	pst-sigsys.doc.r21667
	pst-slpe.doc.r24391
	pst-solarsystem.doc.r69675
	pst-solides3d.doc.r68786
	pst-soroban.doc.r15878
	pst-spectra.doc.r15878
	pst-spinner.doc.r66115
	pst-stru.doc.r38613
	pst-support.doc.r15878
	pst-text.doc.r49542
	pst-thick.doc.r16369
	pst-tools.doc.r60621
	pst-tree.doc.r60421
	pst-turtle.doc.r52261
	pst-tvz.doc.r23451
	pst-uml.doc.r15878
	pst-vectorian.doc.r60488
	pst-vehicle.doc.r61438
	pst-venn.doc.r49316
	pst-vowel.doc.r25228
	pst2pdf.doc.r56172
	pstricks.doc.r72868
	pstricks-add.doc.r66887
	pstricks_calcnotes.doc.r34363
	uml.doc.r17476
	vaucanson-g.doc.r15878
	vocaltract.doc.r25629
"
TEXLIVE_MODULE_SRC_CONTENTS="
	auto-pst-pdf.source.r56596
	makeplot.source.r15878
	pedigree-perl.source.r64227
	pst-3d.source.r17257
	pst-abspos.source.r15878
	pst-am.source.r19591
	pst-blur.source.r15878
	pst-dbicons.source.r17556
	pst-electricfield.source.r29803
	pst-eps.source.r15878
	pst-fr3d.source.r15878
	pst-fun.source.r17909
	pst-gr3d.source.r15878
	pst-intersect.source.r33210
	pst-lens.source.r15878
	pst-light3d.source.r15878
	pst-ob3d.source.r54514
	pst-optexp.source.r62977
	pst-pad.source.r15878
	pst-pdf.source.r56622
	pst-pdgr.source.r45875
	pst-platon.source.r16538
	pst-rubans.source.r23464
	pst-shell.source.r56070
	pst-slpe.source.r24391
	pst-soroban.source.r15878
	pst-thick.source.r16369
	pst-tvz.source.r23451
	pst-uml.source.r15878
	uml.source.r17476
"

inherit texlive-module

DESCRIPTION="TeXLive PSTricks"

LICENSE="GPL-1+ GPL-2 LGPL-2+ LGPL-3 LPPL-1.2 LPPL-1.3 LPPL-1.3c"
SLOT="0"
KEYWORDS="~amd64"
COMMON_DEPEND="
	>=dev-texlive/texlive-basic-2024
	>=dev-texlive/texlive-plaingeneric-2024
"
RDEPEND="
	${COMMON_DEPEND}
"
DEPEND="
	${COMMON_DEPEND}
"

TEXLIVE_MODULE_BINSCRIPTS="
	texmf-dist/scripts/pedigree-perl/pedigree.pl
	texmf-dist/scripts/pst-pdf/ps4pdf
	texmf-dist/scripts/pst2pdf/pst2pdf.pl
"
