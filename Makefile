code2.o: code2_objetosc.c code2_powierzchnia.c code2_objetosc.h code2_powierzchnia.h
	gcc -c code2.c

clean:
	rm *.o *.a *.so
	
code2_powierzchnia.o: code2_powierzchnia.c
	gcc -c code2_powierzchnia.c
	
code2_objetosc.o: code2_objetosc.c
	gcc -fPIC -c code2_objetosc.c
				
code2_powierzchnia.a: code2_powierzchnia.o
	ar rs code2_powierzchnia.a code2_powierzchnia.o

code2_objetosc.so: code2_objetosc.o
	gcc --shared -o code2_objetosc.so code2_objetosc.o
	
code2: code2.o code2_powierzchnia.a code2_objetosc.so
	gcc -Wl,-R -Wl,${PWD} -o code2 code2.c code2_objetosc.so -L. code2_powierzchnia.a
