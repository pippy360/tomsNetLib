all: clean app.out 

app.out: connection.o networking.o googleAccessToken.o 
	gcc -g -O0 connection.o googleAccessToken.o networking.o -lssl -lcrypto -g -o app.out

networking.o: net/networking.c
	gcc -g -O0 -c net/networking.c

connection.o: net/connection.c
	gcc -g -O0 -c net/connection.c

googleAccessToken.o: googleAccessToken.c
	gcc -g -O0 -c googleAccessToken.c

utils.o: utils.c
	gcc -g -O0 -c utils.c

clean:
	rm ./*.o
	echo Clean done.
