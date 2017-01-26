CC=g++
CFLAGS=-g -Wall
LDFLAGS=

all : main.o pklite.o
	$(CC) $(CFLAGS) $^ -o $@ $(LDFLAGS)
	mv $@ bin/pklite112_data_unpacker

%.o : %.cpp
	$(CC) $(CFLAGS) -c $^ -o $@ $(FLAGS)

test : all
	./bin/pklite112_data_unpacker ./bin/A.EXE

clean :
	rm *.o
	
clear : clean
	rm ./bin/pklite112_data_unpacker
