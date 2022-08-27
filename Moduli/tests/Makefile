include ../../Makefile.test.globals

TESTS=	\
				t_EstraiBase_1 \
				t_EstraiBase_2

t_EstraiBase_1.out: t_EstraiBase_1.m \
										Rettangolare_Verticale_1 \
										../EstraiBase.m
	${OCTAVE_CMD} > $@

t_EstraiBase_2.out: t_EstraiBase_2.m \
										Rettangolare_Orizzontale_1 \
										../EstraiBase.m
	${OCTAVE_CMD} > $@

include ../../Makefile.test

