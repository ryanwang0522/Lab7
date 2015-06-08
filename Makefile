tetris:genMino.o tetris.o Mino.o MinoS.o MinoI.o MinoJ.o MinoT.o
	g++ -o tetris genMino.o tetris.o  Mino.o MinoS.o MinoI.o MinoJ.o MinoT.o
Mino.o:Mino.h Mino.cpp
	g++ -c Mino.cpp
MinoS.o:Mino.h MinoS.h MinoS.cpp
	g++ -c MinoS.cpp
MinoI.o:Mino.h MinoI.h MinoI.cpp
	g++ -c MinoI.cpp
MinoJ.o:Mino.h MinoJ.h MinoJ.cpp
	g++ -c MinoJ.cpp
MinoT.o:Mino.h MinoT.h MinoT.cpp
	g++ -c MinoT.cpp
genMino.o:Mino.o MinoS.o MinoI.o  MinoJ.o MinoT.o genMino.h genMino.cpp
	g++ -c genMino.cpp
tetris.o:tetris.cpp genMino.o
	g++ -c tetris.cpp
