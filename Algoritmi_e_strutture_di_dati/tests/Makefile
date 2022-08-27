include ../../Makefile.test.globals

TESTS=	\
				Coda_Lista \
				InsertionSort \
				MergeSort	\
				Pila \
				QuickSelect \
				QuickSort \
				SelectionSort

Coda_Lista.test: t_Coda_Lista.cpp ../Lista.h ../Coda.h ../Coda_Lista.h ../Coda_Lista.cpp ../Coda_Enqueue_Lista.cpp ../Coda_Dequeue_Lista.cpp ../Coda_Vuota_Lista.cpp ../Coda_RestituisciPrimo_Lista.cpp
	${CXX} ${CXXFLAGS} $^ -o $@

InsertionSort.test: t_InsertionSort.cpp ../InsertionSort.cpp
	${CXX} ${CXXFLAGS} $^ -o $@

MergeSort.test: t_MergeSort.cpp ../MergeSort.cpp
	${CXX} ${CXXFLAGS} $^ -o $@

Pila.test: ../Pila_Pop.cpp ../Pila_Push.cpp ../Pila_Vuota.cpp ../Pila_Top.cpp t_Pila.cpp
	${CXX} ${CXXFLAGS} $^ -o $@

QuickSort.test: t_QuickSort.cpp ../QuickSort.cpp
	${CXX} ${CXXFLAGS} $^ -o $@

QuickSelect.test: t_QuickSelect.cpp ../QuickSort.cpp ../QuickSelect.cpp
	${CXX} ${CXXFLAGS} $^ -o $@

SelectionSort.test: t_SelectionSort.cpp ../SelectionSort.cpp
	${CXX} ${CXXFLAGS} $^ -o $@

include ../../Makefile.test
