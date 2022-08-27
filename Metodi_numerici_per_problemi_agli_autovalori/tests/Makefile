include ../../Makefile.test.globals

TESTS=	\
				t_MetodoDellePotenze_1 \
				t_MetodoDiIterazioneDiSottospaziPerFormaDiSchur_1 \
				t_MetodoDiIterazioneDiSottospazi_1 \
				t_MetodoDiIterazioneDiSottospazi_2 \
				t_MetodoDiIterazioneDiSottospazi_3 \
				t_MetodoDiIterazioneInversa_1 \
				t_MetodoDelQuozienteDiRayleigh_1 \
				t_ProtometodoQR_1 \

t_MetodoDellePotenze_1.out: t_MetodoDellePotenze_1.m \
													Hermitiana_UnicoAutovaloreDiModuloMassimo \
													../MetodoDellePotenze.m
	${OCTAVE_CMD} > $@

t_MetodoDelQuozienteDiRayleigh_1.out: t_MetodoDelQuozienteDiRayleigh_1.m \
													Hermitiana_UnicoAutovaloreDiModuloMassimo \
													../MetodoDelQuozienteDiRayleigh.m
	${OCTAVE_CMD} > $@

t_MetodoDiIterazioneDiSottospaziPerFormaDiSchur_1.out: t_MetodoDiIterazioneDiSottospaziPerFormaDiSchur_1.m \
													Hermitiana_UnicoAutovaloreDiModuloMassimo \
													../MetodoDiIterazioneDiSottospaziPerFormaDiSchur.m
	${OCTAVE_CMD} > $@

t_MetodoDiIterazioneDiSottospazi_1.out: t_MetodoDiIterazioneDiSottospazi_1.m \
													Hermitiana_UnicoAutovaloreDiModuloMassimo \
													../MetodoDiIterazioneDiSottospazi.m
	${OCTAVE_CMD} > $@

t_MetodoDiIterazioneDiSottospazi_2.out: t_MetodoDiIterazioneDiSottospazi_2.m \
													Diagonalizzabile_AutovaloriMultipli \
													../MetodoDiIterazioneDiSottospazi.m
	${OCTAVE_CMD} > $@

t_MetodoDiIterazioneDiSottospazi_3.out: t_MetodoDiIterazioneDiSottospazi_3.m \
													Diagonalizzabile_AutovaloriMultipli \
													../MetodoDiIterazioneDiSottospazi.m
	${OCTAVE_CMD} > $@

t_MetodoDiIterazioneInversa_1.out: t_MetodoDiIterazioneInversa_1.m \
													Hermitiana_UnicoAutovaloreDiModuloMassimo \
													../MetodoDiIterazioneInversa.m
	${OCTAVE_CMD} > $@

t_ProtometodoQR_1.out: t_ProtometodoQR_1.m \
													Hermitiana_UnicoAutovaloreDiModuloMassimo \
													../ProtometodoQR.m
	${OCTAVE_CMD} > $@

include ../../Makefile.test
